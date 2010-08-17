//
//  MainView.h
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AsyncSocket.h"

@interface MainView : UIViewController<UIWebViewDelegate> {
	UIImageView *imageView;
	UIWebView *webView;
	AsyncSocket *sock;	
	id delegate;
	SEL callback;
	int currentSession;	
}

@property (nonatomic, retain ) IBOutlet UIImageView *imageView;
@property (nonatomic, retain ) IBOutlet UIWebView *webView;
@property (nonatomic, retain) id delegate;
@property (nonatomic) SEL callback;
@property (nonatomic, retain) AsyncSocket *sock;
@property () int currentSession;

- (BOOL) playData:(NSData *)data sock:(AsyncSocket *)sock;
- (void) webViewDidFinishLoad:(UIWebView *)webView;
- (void) setCallback:(id)delegateParam selector:(SEL)selector;

@end
