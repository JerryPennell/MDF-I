//
//  FirstViewController.h
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class AppDelegate;

@interface FirstViewController : UIViewController 
{
    IBOutlet UITableView *tableView;
    IBOutlet UIButton *editButton;
    AppDelegate *delegateApp;
}


-(IBAction)Edit:(id)sender;

@end