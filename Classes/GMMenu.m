//
//  GMMenu.m
//  gamemenu
//
//	Base for the menuing system.
//	Provides a replacement navigation system for iPad menus
//
//  Created by Avi Itskovich on 10-09-14.
//

#import "GMMenu.h"

@implementation GMMenu

@synthesize delegate;

#pragma mark -
#pragma mark Initialization

- (id)init {
	if ((self = [super init])) {
		stack = [[NSMutableArray alloc] init];
		self.view.backgroundColor = [UIColor clearColor];
	}
	return self;
}

- (id)initWithRootMenu:(GMPage *)menu {
	if ((self = [self init])) {
		[self navigateToMenuPage:menu];
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	// Add tap outside to resume detection
	UITapGestureRecognizer *outsideTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resume)];
	outsideTap.delegate = self;
	[self.view addGestureRecognizer:outsideTap];
	[outsideTap release];
}

#pragma mark -
#pragma mark Navigation

- (void)navigateToMenuPage:(GMPage *)menu {
	[[[stack lastObject] view] removeFromSuperview];
	[stack addObject:menu];
	menu.delegate = self;
	CGPoint ipadCenter = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
	[menu.view setCenter:ipadCenter];
	[menu viewWillAppear:NO];
	[self.view addSubview:menu.view];
}

- (void)back {
	if ([stack count] > 1) {
		// Remove current menu page
		GMPage *currentPage = [stack lastObject];
		[currentPage viewWillDisappear:NO];
		[[currentPage view] removeFromSuperview];
		[stack removeLastObject];
		
		// Show previous menu page
		currentPage = [stack lastObject];
		[currentPage viewWillAppear:NO];
		[self.view addSubview:[currentPage view]];
	}
}

- (void)resume {
	if ([self.delegate respondsToSelector:@selector(resume)]) {
		[self.delegate resume];
	}
}	

#pragma mark -
#pragma mark UIGestureRecognizerDelegate

// Cancels all touches not in the background
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
	if (touch.view != self.view) {
		return FALSE;
	}
	return TRUE;
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
	[stack release];
    [super dealloc];
}


@end
