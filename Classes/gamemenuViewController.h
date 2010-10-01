//
//  gamemenuViewController.h
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.
//

#import <UIKit/UIKit.h>
#import "GMMenu.h"

@interface gamemenuViewController : UIViewController {
	GMMenu *menu;
}

// Method used to show the menu
- (IBAction)showMenu;

// Method used to resume the game (hide menu)
- (void)resume;

@end

