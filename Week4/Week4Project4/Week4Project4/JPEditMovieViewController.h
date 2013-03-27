//
//  JPEditMovieViewController.h
//  Week4Project4
//
//  Created by Wayne Pennell on 3/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JPMovie;

@interface JPEditMovieViewController : UITableViewController


//Set up Edit for movie fields
@property (nonatomic, strong) IBOutlet UITextField *movieNameField;

@property (nonatomic, strong) IBOutlet UISwitch *haveSwitch;

@property (nonatomic, strong) JPMovie *movie;

-(IBAction)movieDataChanged:(id)sender;

@end
