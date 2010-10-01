    //
//  TestMenuPage1.m
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-15.
//

#import "TestMenuPage1.h"


@implementation TestMenuPage1

#pragma mark -
#pragma mark Initialization

- (id)init {
	return [self initWithNibName:@"TestMenuPage1" bundle:[NSBundle mainBundle]];
}

#pragma mark -
#pragma mark Navigation

// Linking the back action to the button
- (IBAction)back {
	[super back];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}

#pragma mark -
#pragma mark  Memory Management

- (void)dealloc {
    [super dealloc];
}


@end
