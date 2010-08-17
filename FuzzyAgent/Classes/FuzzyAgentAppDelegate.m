//
//  FuzzyAgentAppDelegate.m
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "FuzzyAgentAppDelegate.h"

@implementation FuzzyAgentAppDelegate

@synthesize window;
@synthesize viewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    // Override point for customization after application launch
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	controlServer = [[ControlServer alloc] init];
	[controlServer setImageViewControl:viewController.imageView];
	[controlServer setMainViewControl:viewController];
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
