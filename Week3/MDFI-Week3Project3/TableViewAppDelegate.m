//
//  TableViewAppDelegate.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/21/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "TableViewAppDelegate.h"
#import "FirstViewController.h"

@implementation TableViewAppDelegate

@synthesize window;
@synthesize navigationController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}

@end


