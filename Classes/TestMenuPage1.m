    //
//  TestMenuPage1.m
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-15.
//  Copyright 2010 Bloq Software. All rights reserved.
//

#import "TestMenuPage1.h"


@implementation TestMenuPage1


- (id)init {
	return [self initWithNibName:@"TestMenuPage1" bundle:[NSBundle mainBundle]];
}

- (IBAction)back {
	[super back];
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
