//
//  MediaPlayer.m
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AudioPlayer.h"

@implementation AudioPlayer

@synthesize player;
@synthesize currentSession;
@synthesize delegate;
@synthesize callback;
@synthesize sock;

-(id) init {
	self = [super init];
	currentSession = 0;
	return self;
}

- (void)dealloc {
    [super dealloc];
}

- (void) playResourceFile:(NSString *)path ofType:(NSString*) ofType{
	NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:path ofType: ofType ];
	[self play: soundFilePath];
}

- (void) play:(NSString *)filename {
	//Player
	NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: filename];
	AVAudioPlayer *newPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error: nil];
	[fileURL release];
	[self startPlayer: newPlayer];
	[newPlayer release];
}

- (BOOL) playData:(NSData *)data sock:(AsyncSocket *)sock {
	while( currentSession > 0 ) {
		NSLog( @"CurrentSession=%d\n", currentSession );
		[NSThread sleepForTimeInterval:0.1];
	}
	currentSession++;

	self.sock = sock;
	NSLog(@"playData: %d bytes", [data length]);	
	//Player
	AVAudioPlayer *newPlayer = [[AVAudioPlayer alloc] initWithData:data error: nil];
	//[self startPlayer: newPlayer];	
	//[newPlayer release];
	if( [newPlayer prepareToPlay] )
	{
		[newPlayer setDelegate:self];
		[newPlayer setVolume: 1.0];
		[newPlayer play];
		NSLog(@"play is done");
		return TRUE;
	}
	NSLog(@"play failed");
	currentSession--;
	return FALSE;
}

- (void) startPlayer:(AVAudioPlayer *)newPlayer {		
	player = newPlayer;
	[player prepareToPlay];
	[player setDelegate:self];
	[player setVolume: 1.0];
	[player play];
}

- (void) audioPlayerDidFinishPlaying: (AVAudioPlayer *) aPlayer successfully: (BOOL) completed {
	NSLog(@"Completed");
	if (completed == YES) {
		[aPlayer release];
		currentSession--;
		//call selector
		if(delegate && callback) {
			if([delegate respondsToSelector:self.callback]) {
				[delegate performSelector:self.callback withObject:sock];
			}else {
				NSLog(@"No response from delegate");
			}
		}	
	}
}

- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error {
	NSLog(@"audioPlayerDecodeErrorDidOccur");
	//call selector
	if(delegate && callback) {
		if([delegate respondsToSelector:self.callback]) {
			[delegate performSelector:self.callback withObject:sock];
		}else {
			NSLog(@"No response from delegate");
		}
	}
	currentSession--;	
}

- (void) setCallback:(id)delegateParam selector:(SEL)selector {
	self.delegate = delegateParam;
	self.callback = selector;
}
	
@end

