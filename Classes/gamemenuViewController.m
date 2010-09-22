//
//  gamemenuViewController.m
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.
//  Copyright Bloq Software 2010. All rights reserved.
//

#import "gamemenuViewController.h"
#import "TestMenuMainPage.h"

@implementation gamemenuViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showMenu {
	TestMenuMainPage *menuPage = [[TestMenuMainPage alloc] init];
	menu = [[GMMenu alloc] initWithRootMenu:menuPage];
	menu.delegate = self;
	[self.view addSubview:menu.view];
	[menuPage release];
}

- (void)resume {
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
