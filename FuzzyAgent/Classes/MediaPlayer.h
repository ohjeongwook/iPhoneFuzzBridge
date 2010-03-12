//
//  MediaPlayer.h
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

#import "AsyncSocket.h"

@interface MediaPlayer : NSObject <AVAudioPlayerDelegate> {
	int currentSession;
	AVAudioPlayer *player;
	id delegate;
	SEL callback;
	AsyncSocket *sock;
}

@property (nonatomic, retain) AVAudioPlayer *player;;
@property () int currentSession;
@property (nonatomic, retain) id delegate;
@property (nonatomic) SEL callback;
@property (nonatomic, retain) AsyncSocket *sock;

- (void) playResourceFile:(NSString *)path ofType:(NSString*) ofType;
- (void) play:(NSString *)filename;
- (BOOL) playData:(NSData *)data sock:(AsyncSocket *)sock;
- (void) startPlayer:(AVAudioPlayer *) player;
- (void) setCallback:(id)delegate selector:(SEL)selector;

@end
