//
//  ViewController.h
//  MDFI-Week1Project1
//
//  Created by Wayne Pennell on 3/5/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>

{
    //Outlet for table view of information
    IBOutlet UITableView *tableView;
    
    //Static array of information
    NSMutableArray *stringArray;
    
    IBOutlet UIButton *editButton;

    //Hold the list of items passed
    NSMutableArray *listOfItems;
    
    
}



@end
