//
//  gamemenuViewController.h
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.
//  Copyright Bloq Software 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GMMenu.h"

@interface gamemenuViewController : UIViewController {
	GMMenu *menu;
}

- (IBAction)showMenu;
- (void)resume;

@end

