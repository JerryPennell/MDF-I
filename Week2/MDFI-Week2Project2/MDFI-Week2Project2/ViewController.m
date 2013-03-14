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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"UInav Stacked", @"UInav Stacked");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        
    }
    return self;
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
    SecondStackViewController *secondView = [[SecondStackViewController alloc] initWithNibName:@"SecondStackView" bundle:nil];
    if (secondView != nil)
    {
        //Moves to the second view controller
        [self.navigationController pushViewController:secondView animated:true];
    }
    
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

@end
