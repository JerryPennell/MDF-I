//
//  ViewController.m
//  MDFI-Week1Project1
//
//  Created by Wayne Pennell on 3/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
#import "DetailViewController.h"
#import "TableViewAppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad
{
    //Initialize the array.
	listOfItems = [[NSMutableArray alloc] init];
    
    //Setting the 20 objects in the Table View
    
    stringArray = [[NSMutableArray alloc] initWithObjects:@"Die Hard", @"Toy Story", @"Matrix", @"Star Wars", @"Hunger Games", @"iRobot",@"Star Trek", @"Ironman", @"The Avengers", @"Lord of the Rings", @"Wall-e", @"Winnie the Pooh", @"Pulp Ficton", @"Seven", @"Blade", @"Shrek", @"Wizard of Oz", @"RoboCop", @"Indiana Jones", nil];
    
    	NSDictionary *moviesInDict = [NSDictionary dictionaryWithObject:stringArray forKey:@"Movies"];
    
    [listOfItems addObject:moviesInDict];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    int sizeOfArray = [stringArray count];
    return sizeOfArray;
}

- (void)tableView:(CustomTableCell *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	//Get the selected Movie
	
	NSString *selectedMovie = nil;

    NSDictionary *dictionary = [listOfItems objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"Movies"];
    selectedMovie = [array objectAtIndex:indexPath.row];
	
	//Initialize the detail view controller and display it.

    DetailViewController *dvController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    dvController.selectedMovie = selectedMovie;
    if (dvController !=nil)
    {
        [self presentViewController:dvController animated:TRUE completion:nil];
    }
}


//Custom Cell creation

- (CustomTableCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSArray *views  = [[NSBundle  mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
    
    for (UIView *view in views)
    {
        if ([view isKindOfClass:[CustomTableCell class]])
        {
            cell = (CustomTableCell*)view;
        }
    }
    static int  count = 0;
    cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];
    count++;
    
    return cell;
    
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView2 commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //add code here for when you hit delete
        [stringArray removeObjectAtIndex:indexPath.row];
        [tableView2 reloadData];
    }
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
