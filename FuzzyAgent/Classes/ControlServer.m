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
		writingInProgress = FALSE;
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

#define READ_TIMEOUT -1.0
#define READ_TIMEOUT_EXTENSION 10.0
#define WRITE_TIMEOUT -1.0

- (void)onSocket:(AsyncSocket *)sock didConnectToHost:(NSString *)host port:(UInt16)port
{
	if(debugLevel > -2 ) {	
		NSLog(@"Accepted client %@:%hu", host, port);
	}
	[bufferedData setLength:0];
	
	[sock readDataWithTimeout:READ_TIMEOUT tag:0];
}

- (void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{	
	if(debugLevel > -1 ) {
		NSLog( @"didReadData length = %d\n", [data length] );
	}
	//Parse buffer and play the buffer
	[bufferedData appendData: data];
	[self play:sock];
	if(debugLevel > 2 ) {
		NSLog( @"bufferedData length = %d\n", [bufferedData length] );
	}
}

-(void) sendResponse:(AsyncSocket *)sock {
	NSLog(@"sendResponse called");
	
	Response *response = [[[Response builder] setReturnCode:1] build];
	NSData *data = [response data];

	long length = [data length];
	NSMutableData *data_to_send = [[NSMutableData alloc] initWithBytes:(void *)&length length:sizeof( length )];
	[data_to_send appendData:data];
	NSData* receivedData = [data_to_send retain];
	
	writingInProgress = TRUE;
	[sock writeData:(NSData *)receivedData withTimeout:WRITE_TIMEOUT tag:0];
	NSLog(@"sendResponse %d bytes", [receivedData length]);

	//[data release];
	[data_to_send release];
	[receivedData release];
}

-(void) updateCallback:(NSData *)data {
	NSLog(@"updateCallback called");
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
	
	BOOL needMoreData = TRUE;
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
				NSLog( @"Calling playData(%d)\n",control.sequence );
				ret = [mediaPlayer playData:control.data sock:sock];
			}

			int offset = sizeof( unsigned long ) + bufferLength;
			NSRange remaining_range = { offset,  bufferedData.length - offset };
			[bufferedData setData:[bufferedData subdataWithRange:remaining_range]];
			needMoreData = FALSE;
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
			needMoreData = TRUE;
		}

	}
	NSLog( @"play returning" );
	if( needMoreData ) {
		if( !writingInProgress )
		{
			NSLog( @"readDataWithTimeout" );
			[sock readDataWithTimeout:READ_TIMEOUT tag:0];
		}
	}
}

- (NSTimeInterval)onSocket:(AsyncSocket *)sock
  shouldTimeoutReadWithTag:(long)tag
				   elapsed:(NSTimeInterval)elapsed
				 bytesDone:(CFIndex)length {
	if(elapsed <= READ_TIMEOUT)
	{
		return READ_TIMEOUT_EXTENSION;
	}
	
	return 0.0;
}

- (NSTimeInterval)onSocket:(AsyncSocket *)sock
 shouldTimeoutWriteWithTag:(long)tag
				   elapsed:(NSTimeInterval)elapsed
				 bytesDone:(CFIndex)length {
	NSLog( @"shouldTimeoutWriteWithTag\n" );
	return 10.0;
}

- (void)onSocket:(AsyncSocket *)sock didWriteDataWithTag:(long)tag {
	NSLog(@"didWriteDataWithTag");
	[sock readDataWithTimeout:READ_TIMEOUT tag:0];	
	writingInProgress = FALSE;
}


- (void)onSocket:(AsyncSocket *)sock didWritePartialDataOfLength:(CFIndex)partialLength tag:(long)tag {
	NSLog(@"didWritePartialDataOfLength: %d", partialLength );	
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
