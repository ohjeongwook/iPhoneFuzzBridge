//
//  FuzzyAgentAppDelegate.h
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ControlServer.h"

@interface FuzzyAgentAppDelegate : NSObject <UIApplicationDelegate>  {
    UIWindow *window;
	ControlServer *controlServer;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) ControlServer *controlServer;

@end

