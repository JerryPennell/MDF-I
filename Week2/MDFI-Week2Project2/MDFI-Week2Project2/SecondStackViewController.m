//
//  SecondViewController.m
//  MDFI-Week2Project2
//
//  Created by Wayne Pennell on 3/11/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "SecondStackViewController.h"

@interface SecondStackViewController ()

@end

@implementation SecondStackViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

-(IBAction)onClick:(id)sender
{
    
    //Push new controllers on the stack
    [self.navigationController popViewControllerAnimated:true];
}

- (void)viewDidLoad
{
    self.title = @"Second";
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
