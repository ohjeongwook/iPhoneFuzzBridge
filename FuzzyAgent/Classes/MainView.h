//
//  MainView.h
//  FuzzyAgent
//
//  Created by jeongwook oh on 3/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIViewController {
	UIView *view;
	UIImageView *imageView;
}

@property (nonatomic, retain ) IBOutlet UIView *view;
@property (nonatomic, retain ) IBOutlet UIImageView *imageView;

@end
