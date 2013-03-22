//
//  FirstViewController.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//					



#import "FirstViewController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"
#import "LocationAnnotation.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Biz List", @"Biz List");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        delegateApp = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [delegateApp.locDataArray count];
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

-(void)tableView:(UITableView *)tableView2 commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [delegateApp.locDataArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView3 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    //Setting cell title, platform, and thumbnail
    LocationAnnotation *location = [delegateApp.locDataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = location.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    //Shows detailview
    LocationAnnotation *location = [delegateApp.locDataArray objectAtIndex:indexPath.row];
    detailView.location = location;
    [self.navigationController pushViewController:detailView animated:YES];
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

