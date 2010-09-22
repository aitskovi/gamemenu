//
//  gamemenuAppDelegate.h
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.
//  Copyright Bloq Software 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class gamemenuViewController;

@interface gamemenuAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    gamemenuViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet gamemenuViewController *viewController;

@end

