    //
//  TestMenuMainPage.m
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-15.
//  Copyright 2010 Bloq Software. All rights reserved.
//

#import "TestMenuMainPage.h"
#import "TestMenuPage1.h"

@implementation TestMenuMainPage

- (id)init {
	return [self initWithNibName:@"TestMenuMainPage" bundle:[NSBundle mainBundle]];
}

- (IBAction)resume {
	if ([self.delegate respondsToSelector:@selector(resume)]) {
		[self.delegate resume];
	}
}

- (IBAction)back {
	[super back];
}

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


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
