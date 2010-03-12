//
//  ControlServer.m
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ControlServer.h"

@implementation ControlServer

@synthesize mediaPlayer;

-(id) init {
	self = [super init];
	
	if( self )
	{
		debugLevel = 0;
		mediaPlayer = [[MediaPlayer alloc] init];
		[mediaPlayer setCallback:self selector:@selector(updateCallback:)];	
	
		bufferedData = [[NSMutableData alloc] initWithData:@""];

		//Socket related initialization
		listenSocket = [[AsyncSocket alloc] initWithDelegate:self];
		connectedSockets = [[NSMutableArray alloc] initWithCapacity:1];
		
		[listenSocket setRunLoopModes:[NSArray arrayWithObject:NSRunLoopCommonModes]];
		
		int port = 1234;
		NSError *error = nil;
		if( ![listenSocket acceptOnPort:port error:&error] )
		{
			NSLog(@"Error starting server: %@", error);
			return nil;
		}
		
		NSLog(@"Server started on port %hu", [listenSocket localPort]);
	}
	return self;
}

- (void)dealloc {
	[listenSocket release];
	[connectedSockets release];
    [super dealloc];
}

#define ECHO_MSG 1
#define READ_TIMEOUT 15.0
#define READ_TIMEOUT_EXTENSION 10.0
#define WRITE_TIMEOUT 15.0

- (void)onSocket:(AsyncSocket *)sock didConnectToHost:(NSString *)host port:(UInt16)port
{
	if(debugLevel > 2 ) {	
		NSLog(@"Accepted client %@:%hu", host, port);
	}
	[bufferedData setLength:0];
	
	[sock readDataWithTimeout:READ_TIMEOUT tag:0];
}

- (void)onSocket:(AsyncSocket *)sock didWriteDataWithTag:(long)tag
{
}

- (void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{	
	if(debugLevel > 2 ) {
		NSLog( @"didReadData length = %d\n", [data length] );
	}
	//Parse buffer and play the buffer
	[bufferedData appendData: data];
	[self play:sock];
	if(debugLevel > 2 ) {
		NSLog( @"bufferedData length = %d\n", [bufferedData length] );
	}
	
	[sock readDataWithTimeout:READ_TIMEOUT tag:0];	
}

-(void) sendResponse:(AsyncSocket *)sock {
	Response *response = [[[Response builder] setReturnCode:1] build];
	
	NSData *data = [response data];

	long length = [data length];
	NSData *length_data = [[NSData alloc] initWithBytes:(void *)&length length:sizeof( length )];	
	[sock writeData:(NSData *)length_data withTimeout:WRITE_TIMEOUT tag:0];
	//[length_data release];

	[sock writeData:(NSData *)data withTimeout:WRITE_TIMEOUT tag:0];
	//[data release];
}

-(void) updateCallback:(NSData *)data {
	//The play is done
	//Send the response back to client
	AsyncSocket *sock = (AsyncSocket *) data;
	[self sendResponse:sock];
	//[self sendResponse:sock];
	//Play remaining buffer
	[self play:sock];
}

- (void) play:(AsyncSocket *)sock {
	NSLog( @"play mediaPlayer.currentSession = %d bufferedData.length =%d\n" , mediaPlayer.currentSession, bufferedData.length );
	
	while( mediaPlayer.currentSession == 0 && bufferedData.length >= sizeof( unsigned long ) )
	{
		unsigned long bufferLength = 0;
		[bufferedData getBytes: &bufferLength length: sizeof(unsigned long)];
		
		BOOL ret = FALSE;	
		if( bufferLength <= bufferedData.length - sizeof( unsigned long ) ) {
			if(debugLevel > 2 ) {
				NSLog( @"bufferedData length = %d\n", [bufferedData length] );
				NSLog( @"bufferLength = %d\n", bufferLength );
			}
	
			NSRange range = {sizeof( unsigned long ) , bufferLength };
			Control *control = [Control parseFromData: [bufferedData subdataWithRange:range]];
			
			if( control ) {
				NSLog( @"Calling playData\n" );
				ret = [mediaPlayer playData:control.data sock:sock];
			}

			int offset = sizeof( unsigned long ) + bufferLength;
			NSRange remaining_range = { offset,  bufferedData.length - offset };
			[bufferedData setData:[bufferedData subdataWithRange:remaining_range]];
		}
		else {
			break;
		}

		NSLog( @"ret = %d\n" , ret );
		
		if(ret == TRUE)
			break;
		else {
			//TODO: Return response with "failed"
			[self sendResponse:sock];
		}

	}
	NSLog( @"Returning" );
}

- (NSTimeInterval)onSocket:(AsyncSocket *)sock
  shouldTimeoutReadWithTag:(long)tag
				   elapsed:(NSTimeInterval)elapsed
				 bytesDone:(CFIndex)length
{
	if(elapsed <= READ_TIMEOUT)
	{
		return READ_TIMEOUT_EXTENSION;
	}
	
	return 0.0;
}

- (void)onSocket:(AsyncSocket *)sock willDisconnectWithError:(NSError *)err
{
	if(debugLevel > 2 ) {
		NSLog(@"Client Disconnected: %@:%hu", [sock connectedHost], [sock connectedPort]);
	}
}

- (void)onSocketDidDisconnect:(AsyncSocket *)sock
{
	[connectedSockets removeObject:sock];
}

@end
