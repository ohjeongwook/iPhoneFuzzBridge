//
//  MainView.m
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"


@implementation MainView

@synthesize imageView;

/*
 CGRect myImageRect = CGRectMake(0.0f, 0.0f, 320.0f, 109.0f);
 UIImageView *myImage = [[UIImageView alloc] initWithFrame:myImageRect];
 NSString *testFilePath = [[NSBundle mainBundle] pathForResource: @"test.png" ofType: @"png"];
 //[myImage setImage:[UIImage imageNamed:@"test.png"]];
 UIImage *image=[[UIImage alloc] initWithContentsOfFile:testFilePath];
 [imageView setImage:image];
 imageView.opaque = YES; // explicitly opaque for performance
 //[imageView initWithImage: myImage];
 [myImage release];	
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSString *testFilePath = [[NSBundle mainBundle] pathForResource: @"test" ofType: @"png"];
	NSLog( @"testFilePath = %@", testFilePath );
	UIImage *image=[[UIImage alloc] initWithContentsOfFile:testFilePath];
	NSLog( @"image = %@", image );
	[imageView setImage:image];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
