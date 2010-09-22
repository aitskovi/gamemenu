//
//  GMPage.h
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.
//  Copyright 2010 Bloq Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GMPageDelegate;

@interface GMPage : UIViewController {
	id <GMPageDelegate> delegate;
}

@property (nonatomic, assign) id delegate;

- (id)init;
- (void)back;

@end

@protocol GMPageDelegate

@required
- (void)back;
- (void)navigateToMenuPage:(GMPage *)menu;

@end

