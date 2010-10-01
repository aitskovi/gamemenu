    //
//  TestMenuMainPage.m
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-15.
//

#import "TestMenuMainPage.h"
#import "TestMenuPage1.h"

@implementation TestMenuMainPage

#pragma mark Initialization

- (id)init {
	return [self initWithNibName:@"TestMenuMainPage" bundle:[NSBundle mainBundle]];
}

#pragma mark -
#pragma mark Navigation

- (IBAction)resume {
	if ([self.delegate respondsToSelector:@selector(resume)]) {
		[self.delegate resume];
	}
}

- (IBAction)back {
	[super back];
}

// Showing a certain page
- (IBAction)showPage1 {
	if ([self.delegate respondsToSelector:@selector(navigateToMenuPage:)]) {
		TestMenuPage1 *menuPage1 = [[TestMenuPage1 alloc] init];
		[self.delegate navigateToMenuPage:menuPage1];
		[menuPage1 release];
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}

#pragma mark -
#pragma mark Memory Management

- (void)dealloc {
    [super dealloc];
}


@end
