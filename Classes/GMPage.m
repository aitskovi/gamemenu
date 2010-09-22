    //
//  GMPage.m
//  gamemenu
//
//  Created by Avi Itskovich on 10-09-14.
//  Copyright 2010 Bloq Software. All rights reserved.
//

#import "GMPage.h"


@implementation GMPage

@synthesize delegate;

#pragma mark -
#pragma mark Initialization

- (id)init {
	if ((self = [super init])) {
		
	}
	return self;
}

#pragma mark -
#pragma mark Navigation

- (void)back {
	if ([self.delegate respondsToSelector:@selector(back)]) {
		[self.delegate back];
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}

#pragma mark -
#pragma mark Memory Management

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
	delegate = nil;
    [super dealloc];
}


@end
