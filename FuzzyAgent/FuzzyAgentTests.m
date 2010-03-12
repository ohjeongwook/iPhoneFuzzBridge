//
//  FuzzyAgentTests.m
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/8/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "FuzzyAgentTests.h"
#import "AsyncSocket.h"

@implementation FuzzyAgentTests

@synthesize player;
@synthesize connectedSockets;

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application

- (void) testAppDelegate {
    
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
    
}

- (void) audioPlayerDidFinishPlaying: (AVAudioPlayer *) player successfully: (BOOL) completed {
    if (completed == YES) {
		NSLog(@"Completed");
    }
}

- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error {
	NSLog(@"audioPlayerDecodeErrorDidOccur");
}

- (void) testPlay {
	NSString *soundFilePath = [[NSBundle mainBundle] pathForResource: @"440Hz-5sec" ofType: @"mp3"];
    STAssertTrue( soundFilePath!=nil , @"soundFilePath nil" );

	NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: soundFilePath];
    STAssertTrue( fileURL!=nil , @"fileURL nil" );
	
	AVAudioPlayer *newPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error: nil];
	[fileURL release];
	
	self.player = newPlayer;
	[newPlayer release];
	
	[player prepareToPlay];
	[player setDelegate:self];
	[player setVolume: 1.0];  
	[player play]; 
}

- (void) testVibrate {
    AudioServicesPlaySystemSound (kSystemSoundID_Vibrate);	
}

- (void) testControl {
	Control_Builder *control_builder = [[Control_Builder alloc] init]; 
	[control_builder setOpcode: 5453];
	[control_builder setType:1234];
	[control_builder setData:@""];
	Control *control = [control_builder build];
    STAssertTrue( control.opcode==5453 , @"control.opcode is wrong" );
    STAssertTrue( control.type==1234 , @"control.type is wrong" );
	[control 

}

- (void)onSocket:(AsyncSocket *)sock didAcceptNewSocket:(AsyncSocket *)newSocket
{
	NSLog(@"didAcceptNewSocket");
	[connectedSockets addObject:newSocket];
}

#define ECHO_MSG 1
#define READ_TIMEOUT 15.0
#define READ_TIMEOUT_EXTENSION 10.0

- (void)onSocket:(AsyncSocket *)sock didConnectToHost:(NSString *)host port:(UInt16)port
{
	NSLog(@"Accepted client %@:%hu", host, port);
	
	//[sock writeData:welcomeData withTimeout:-1 tag:WELCOME_MSG];	
	[sock readDataToData:[AsyncSocket CRLFData] withTimeout:READ_TIMEOUT tag:0];
}

- (void)onSocket:(AsyncSocket *)sock didWriteDataWithTag:(long)tag
{
	if( tag == ECHO_MSG )
		[sock readDataToData:[AsyncSocket CRLFData] withTimeout:READ_TIMEOUT tag:0];
}

- (void)onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
	NSData *strData = [data subdataWithRange:NSMakeRange(0, [data length] - 2)];
	NSString *msg = [[[NSString alloc] initWithData:strData encoding:NSUTF8StringEncoding] autorelease];

	[sock writeData:data withTimeout:-1 tag:ECHO_MSG];
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
	NSLog(@"Client Disconnected: %@:%hu", [sock connectedHost], [sock connectedPort]);
}

- (void)onSocketDidDisconnect:(AsyncSocket *)sock
{
	[connectedSockets removeObject:sock];
}

- (void) testListen {
	AsyncSocket *listenSocket = [[AsyncSocket alloc] initWithDelegate:self];
	connectedSockets = [[NSMutableArray alloc] initWithCapacity:1];
	
	[listenSocket setRunLoopModes:[NSArray arrayWithObject:NSRunLoopCommonModes]];
	
	int port = 1234;
	NSError *error = nil;
	if( ![listenSocket acceptOnPort:port error:&error] )
	{
		NSLog(@"Error starting server: %@", error);
	    STAssertTrue(FALSE, @"Listen failed" );	
		return;
	}
	
	NSLog(@"Server started on port %hu", [listenSocket localPort]);
	[NSThread sleepForTimeInterval:20.0];
	[listenSocket disconnect];
}

#else                           // all code under test must be linked into the Unit Test bundle

- (void) testMath {
    STAssertTrue((1+1)==2, @"Compiler isn't feeling well today :-(" );
}

#endif


@end
