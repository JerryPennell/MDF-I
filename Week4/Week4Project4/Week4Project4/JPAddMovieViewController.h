//
//  JPAddMovieViewController.h
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JPMovieListViewController;

@interface JPAddMovieViewController : UITableViewController

- (IBAction)cancelButtonPressed:(id)sender;

- (IBAction)doneButtonPressed:(id)sender;

@property (nonatomic, strong) IBOutlet UITextField *movieNameField;

//Creating class should be a delegate
@property (nonatomic, strong) JPMovieListViewController *movieListViewController;

@end
