//
//  ImageViewer.m
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ImageViewer.h"


@implementation ImageViewer

-(id) init {
	self = [super init];
	return self;
}

-(void) dealloc {
	[super dealloc];
}

-(void) showImage:(UIImageView *)imageView data:(NSData *)data {
	UIImage *image=[[UIImage alloc] initWithData:data];
	[imageView setImage:image];
	[image release];
}

@end
