//
//  GMMenu.h
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.
//  Copyright 2010 Bloq Software. All rights reserved.
//
//	The menu base for the menuing system
//
//

#import <UIKit/UIKit.h>
#import "GMPage.h"

@protocol GMMenuDelegate

@required
- (void)resume;

@end


@interface GMMenu : UIViewController <GMPageDelegate, UIGestureRecognizerDelegate> {
	id <GMMenuDelegate> delegate;
	NSMutableArray *stack;
}

@property (nonatomic, assign) id delegate;

// Initialization
- (id)initWithRootMenu:(GMPage *)menuPage;

// Navigation
- (void)navigateToMenuPage:(GMPage *)menuPage;
- (void)back;
- (void)resume;

//UIGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch;
@end
