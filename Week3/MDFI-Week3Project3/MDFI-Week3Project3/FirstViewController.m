//
//  FirstViewController.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Forcing all states so the text will stay for done and editing
-(void)setTitleOfButtonNamed:(UIButton *)button withTitle:(NSString *)buttonTitle
{
    [button setTitle:buttonTitle forState:(UIControlStateHighlighted)];
    [button setTitle:buttonTitle forState:(UIControlStateSelected)];
    [button setTitle:buttonTitle forState:(UIControlStateNormal)];
    
}

//Sends the button into edit mode or done when clicked
- (IBAction) Edit:(id)sender{
	if(self.editing)
	{
		[super setEditing:NO animated:NO];
		[tableView setEditing:NO animated:NO];
		[tableView reloadData];
        [self setTitleOfButtonNamed:editButton withTitle:@"Edit"];
		
	}
	else
	{
		[super setEditing:YES animated:YES];
		[tableView setEditing:YES animated:YES];
		[tableView reloadData];
        [self setTitleOfButtonNamed:editButton withTitle:@"Done"];
	}
}

@end
