//
//  ControlServer.h
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AsyncSocket.h"
#import "AudioPlayer.h"
#import "ImageViewer.h"
#import "FuzzyAgent.pb.h"
#import "MainView.h"

@interface ControlServer : NSObject {
	AsyncSocket *listenSocket;
	NSMutableArray *connectedSockets;
	AudioPlayer *mediaPlayer;
	
	UIImageView *imageView;
	ImageViewer *imageViewer;
	
	MainView *mainView;
	
	NSMutableData *bufferedData;
	int debugLevel;
	BOOL writingInProgress;
}

@property (nonatomic, retain) NSMutableArray *connectedSockets;
@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) MainView *mainView;
@property (nonatomic, retain) ImageViewer *imageViewer;
@property (nonatomic, retain) AudioPlayer *mediaPlayer;

- (void) updateCallback:(NSData *)data;
- (void) play:(AsyncSocket *)sock;
- (void) setImageViewControl:(UIImageView *)imageView;
- (void) setMainViewControl:(MainView *)mainView;

@end
