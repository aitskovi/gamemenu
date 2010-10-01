//
//  GMPage.h
//  gamemenu
//
//	Base for menu pages.
//	Provides a base class for menu pages with already created back action
//
//  Created by Avi Itskovich on 10-09-14.
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

