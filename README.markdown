GameMenu
---------

Game Menu provides a base class for creating an in-game menu system for iPad games. The base class provides navigation and tap outside to resume functionality.

Instructions
============

### Menu Page (GMPage)

To create a menu page simply sub-class GMPage. You can create your page either programatically or using a .xib file.
To show the menu page follow the instructions in the game menu section.

### Game Menu (GMMenu)

GMMenu provides the navigation layer for the menu. To present a menu simply use:
	GMMenu *menu = [[GMMenu alloc] initWithRootMenu:(GMPage *)menuPage];
	menu.delegate = self;
	[self.view addSubview: menu.view];

Navigation within the menu (throwing pages on the menu stack) can be done using:
	[menu navigateToMenuPage:(GMPage *)menuPage];
	
Upcoming Features
=================
* Menu transition animations
* A better README