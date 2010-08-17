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
@synthesize webView;
@synthesize currentSession;
@synthesize delegate;
@synthesize callback;
@synthesize sock;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.currentSession = 0;	
	/*
	NSString *testFilePath = [[NSBundle mainBundle] pathForResource: @"Icon" ofType: @"png"];
	NSLog( @"testFilePath = %@", testFilePath );
	UIImage *image=[[UIImage alloc] initWithContentsOfFile:testFilePath];
	NSLog( @"image = %@", image );
	[imageView setImage:image];*/
	
	//TESTING:
	NSLog( @"Show URL\n" );
	NSString *URLStr = [[NSString alloc] initWithString:@"http:///192.168.1.8/out/out-u.pdf"];
	NSURL *pdfURL = [NSURL URLWithString:URLStr];
	[webView loadRequest:[NSURLRequest requestWithURL:pdfURL]];	
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[webView release];
	[imageView release];
    [super dealloc];
}

- (BOOL) playData:(NSData *)data sock:(AsyncSocket *)sock {
	while( currentSession > 0 ) {
		NSLog( @"CurrentSession=%d\n", currentSession );
		[NSThread sleepForTimeInterval:0.1];
	}
	currentSession++;
	NSLog(@"currentSession++ = %d", currentSession );
	self.sock = sock;

	NSString *URLStr = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
	NSURL *pdfURL = [NSURL URLWithString:URLStr];
	[webView loadRequest:[NSURLRequest requestWithURL:pdfURL]];
	return TRUE;
}

- (void) webViewDidFinishLoad:(UIWebView *)webView
{
	NSLog( @"webViewDidFinishLoad" );
	if( currentSession > 0 )
		currentSession--; 
	
	if(delegate && callback) {
		if([delegate respondsToSelector:self.callback]) {
			[delegate performSelector:self.callback withObject:sock];
		}else {
			NSLog(@"No response from delegate");
		}
	}	
}

- (void) setCallback:(id)delegateParam selector:(SEL)selector {
	self.delegate = delegateParam;
	self.callback = selector;
}

@end
