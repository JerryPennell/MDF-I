//
//  FirstViewController.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//					


#import "FirstViewController.h"
#import "CustomTableCell.h"
#import "DetailViewController.h"
#import <MapKit/MapKit.h>
#import "LocationAnnotation.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Business List", @"Business List");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    //Initialize the array.
	self.locDataArray = [[NSMutableArray alloc] init];
    
    //Business names
    businessNamesUI = [NSArray arrayWithObjects:@"Red Tool Barn - Charleston, SC","Red Tool Barn - Columbia, SC","Red Tool Barn - Greenville, SC","Red Tool Barn - Rock Hill, SC","Red Tool Barn - Anderson, SC","Red Tool Barn - Spartanburg, SC","Red Tool Barn - Clover, SC", "Red Tool Barn - Fort Mill, SC""Red Tool Barn - Chester, SC","Red Tool Barn - Winnsboro, SC",nil];
    
    
    businessLatLocationsUI = [NSArray arrayWithObjects:@"", nil];
    
    //Longitutde of each business
    businessLongLocationsUI = [NSArray arrayWithObjects:@"", nil];

    charlestonSC.latitude = 32.776566f;
    charlestonSC.longitude = -79.930922f;

    columbiaSC.latitude = 34.000710f;
    columbiaSC.longitude = -81.034814f;
    
    greenvilleSC.latitude = 34.852618f;
    greenvilleSC.longitude = -82.394010f;
    
    rockhillSC.latitude = 34.924867f;
    rockhillSC.longitude = -81.025078f;

    andersonSC.latitude = 34.503439f;
    andersonSC.longitude = -82.650133f;
    
    spartanburgSC.latitude = 34.949567f;
    spartanburgSC.longitude = -81.932048f;

    cloverSC.latitude = 35.111248f;
    cloverSC.longitude = -81.226465f;

    fortmillSC.latitude = 34.704861f;
    fortmillSC.longitude = -81.214256f;

    chesterSC.latitude = 35.007370;
    chesterSC.longitude = -76.311035f;
    
    winnsboroSC.latitude = 34.380701f;
    winnsboroSC.longitude = -81.086478f;
    
    

    LocationAnnotation *charleston = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Charleston, SC" coord:charlestonSC];
    LocationAnnotation *columbia = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Columbia, SC" coord:columbiaSC];
    LocationAnnotation *greenville = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Greenville, SC" coord:greenvilleSC];
    LocationAnnotation *rockhill = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Rock Hill, SC" coord:rockhillSC];
    LocationAnnotation *anderson = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Anderson, SC" coord:andersonSC];
    LocationAnnotation *spartanburg = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Spartanburg, SC" coord:spartanburgSC];
    LocationAnnotation *clover = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Clover, SC" coord:cloverSC];
    LocationAnnotation *fortmill = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Fort Mill, SC" coord:fortmillSC];
    LocationAnnotation *chester = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Chester, SC" coord:chesterSC];
    LocationAnnotation *winnsboro = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Winnsboro, SC" coord:winnsboroSC];
    
     self.locDataArray = [[NSMutableArray alloc] initWithObjects: charleston, columbia, greenville, rockhill, anderson, spartanburg, clover, fortmill,chester, winnsboro, nil];
    
    //Adding items to a NSDictionary for holding
    NSDictionary *BusLocInDict = [NSDictionary dictionaryWithObject:self.locDataArray forKey:@"Businesslocations"];
    
    [self.locDataArray addObject:BusLocInDict];
    
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (void)tableView:(CustomTableCell *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	//Get the selected Movie
	
	NSString *selectedLocation = nil;
    
    NSDictionary *dictionary = [self.locDataArray objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"Businesslocations"];
    selectedLocation = [array objectAtIndex:indexPath.row];
	
	//Initialize the detail view controller and display it.
    
//    DetailViewController *dvController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
//    dvController.selectedLocation = selectedLocation;
//    if (dvController !=nil)
//    {
//        [self presentViewController:dvController animated:TRUE completion:nil];
//    }
}


//Custom Cell creation

- (CustomTableCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSArray *views  = [[NSBundle  mainBundle] loadNibNamed:@"CustomTableCell" owner:nil options:nil];
    
    for (UIView *view in views)
    {
        if ([view isKindOfClass:[CustomTableCell class]])
        {
            cell = (CustomTableCell*)view;
        }
    }
    static int  count = 0;
    
    cell.textLabel.text =[NSString stringWithFormat:@"%@ %@", (NSString*)[self.locDataArray objectAtIndex:indexPath.row], @" - Location"];
    
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
        [self.locDataArray removeObjectAtIndex:indexPath.row];
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
