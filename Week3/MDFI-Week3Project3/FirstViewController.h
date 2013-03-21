//
//  FirstViewController.h
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "LocationAnnotation.h"



@interface FirstViewController : UIViewController
{
    IBOutlet UIButton *editButton;
    IBOutlet UITableView *tableView;
    
    //Details of the array for the table view (First Controller)
    
    NSArray *businessNamesUI;
    NSArray *businessLatLocationsUI;
    NSArray *businessLongLocationsUI;
    
    //Locations
    CLLocationCoordinate2D charlestonSC, columbiaSC, greenvilleSC, rockhillSC, andersonSC, spartanburgSC, cloverSC, fortmillSC, chesterSC, winnsboroSC;
       
}


//Information that would be displayed on the information detail page
@property (nonatomic, strong) IBOutlet UILabel *businessTitle;
@property (nonatomic, strong) IBOutlet UILabel *businessLatInfo;
@property (nonatomic, strong) IBOutlet UILabel *businessLongInfo;
@property (nonatomic, strong) IBOutlet LocationAnnotation *locationAnt;
@property (strong, nonatomic) NSMutableArray *locDataArray;


@end
