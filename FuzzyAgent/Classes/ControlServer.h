//
//  ControlServer.h
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AsyncSocket.h"
#import "MediaPlayer.h"
#import "FuzzyAgent.pb.h"

@interface ControlServer : NSObject {
	AsyncSocket *listenSocket;
	NSMutableArray *connectedSockets;
	MediaPlayer *mediaPlayer;
	NSMutableData *bufferedData;
	int debugLevel;
}

@property (nonatomic, retain) NSMutableArray *connectedSockets;
@property (nonatomic, retain) MediaPlayer *mediaPlayer;

- (void) updateCallback:(NSData *)data;
- (void) play:(AsyncSocket *)sock;

@end
