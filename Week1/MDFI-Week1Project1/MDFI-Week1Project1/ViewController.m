//
//  ViewController.m
//  MDFI-Week1Project1
//
//  Created by Wayne Pennell on 3/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad
{
    //Setting the 20 objects in the Table View
    
    stringArray = [[NSMutableArray alloc] initWithObjects:@"Die Hard", @"Toy Story", @"Matrix", @"Star Wars", @"Hunger Games", @"iRobot",@"Star Trek", @"Ironman", @"The Avengers", @"Lord of the Rings", @"Wall-e", @"Winnie the Pooh", @"Pulp Ficton", @"Seven", @"Blade", @"Shrek", @"Wizard of Oz", @"RoboCop", @"Indiana Jones", nil];
    
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

- (UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        //Initalize the cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
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
