//
//  ViewController.m
//  MDFI-Week2Project2
//
//  Created by Wayne Pennell on 3/11/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"
#import "SecondStackViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    //Detail background
    self.view.backgroundColor=[[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"detailbg.png"]];
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    //Creates the second view controller
    SecondStackViewController *secondView = [[SecondStackViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (secondView != nil)
    {
        //Moves to the second view controller
        [self.navigationController pushViewController:secondView animated:true];
    }
    
}

- (void) viewWillAppear:(BOOL)animated
{
    self.title = @"Hello";
    self.navigationController.navigationBar.tintColor = [UIColor blueColor];
    [super viewWillAppear:animated];
}

@end
