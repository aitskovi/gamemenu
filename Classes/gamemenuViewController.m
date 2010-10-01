//
//  gamemenuViewController.m
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.

#import "gamemenuViewController.h"
#import "TestMenuMainPage.h"

@implementation gamemenuViewController

// Show the menu when the button is pressed
- (IBAction)showMenu {
	TestMenuMainPage *menuPage = [[TestMenuMainPage alloc] init];
	menu = [[GMMenu alloc] initWithRootMenu:menuPage];
	menu.delegate = self;
	[self.view addSubview:menu.view];
	[menuPage release];
}

// Used to hide the menu
- (void)resume {
	// Hide the menu
	[menu.view removeFromSuperview];
	[menu release];
	menu = nil;
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[menu release];
	menu = nil;
    [super dealloc];
}

@end
