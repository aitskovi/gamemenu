//
//  GMMenu.h
//  gamemenu
//
//	Base for the menuing system.
//	Provides a replacement navigation system for iPad menus
//
//  Created by Avi Itskovich on 10-09-14.
//

#import <UIKit/UIKit.h>
#import "GMPage.h"

#define GMSLIDEUP 0
#define GMSLIDEDOWN 1
#define GMSLIDELEFT 2
#define GMSLIDERIGHT 3

@protocol GMMenuDelegate

@required
- (void)resume;

@end


@interface GMMenu : UIViewController <GMPageDelegate, UIGestureRecognizerDelegate> {
	id <GMMenuDelegate> delegate;
	NSMutableArray *stack;
	
	// Used for syncing animations
	int menuAnimation;
}

@property (nonatomic, assign) id delegate;

// Initialization
- (id)initWithRootMenu:(GMPage *)menuPage;

// Menu Appearance/Dissapearance
- (void)showMenuInView:(UIView *)view animation:(int)animation;
- (void)hideMenuWithAnimation:(int)animation;

// Navigation
- (void)navigateToMenuPage:(GMPage *)menuPage;
- (void)back;
- (void)resume;

//UIGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch;
@end
