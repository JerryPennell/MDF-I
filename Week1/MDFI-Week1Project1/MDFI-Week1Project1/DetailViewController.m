//
//  DetailViewController.m
//  MDFI-Week1Project1
//
//  Created by Wayne Pennell on 3/7/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//
#import "DetailViewController.h"


@implementation DetailViewController

@synthesize selectedMovie;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	//Display the selected movie.
	lblText.text = selectedMovie;
	
	//Set the title of the navigation bar
	self.navigationItem.title = @"Selected Movie";
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

//Back button in case you don't want to add an event
-(IBAction)backButton:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}


@end