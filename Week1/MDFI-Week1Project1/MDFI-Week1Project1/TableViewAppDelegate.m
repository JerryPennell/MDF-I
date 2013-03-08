//
//  TableViewAppDelegate.m
//  MDFI-Week1Project1
//
//  Created by Wayne Pennell on 3/7/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "TableViewAppDelegate.h"
#import "ViewController.h"

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
