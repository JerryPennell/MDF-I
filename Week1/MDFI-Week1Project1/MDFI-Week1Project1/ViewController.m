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
    
    stringArray = [[NSArray alloc] initWithObjects:@"Die Hard", @"Toy Story", @"Matrix", @"Star Wars", @"Hunger Games", @"iRobot",@"Star Trek", @"Ironman", @"The Avengers", @"Lord of the Rings", @"Wall-e", @"Winnie the Pooh", @"Pulp Ficton", @"Seven", @"Blade", @"Shrek", @"Wizard of Oz", @"RoboCop", @"Indiana Jones", nil];
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
@end
