//
//  JPEditMovieViewController.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "JPEditMovieViewController.h"
#import "JPMovie.h"

@interface JPEditMovieViewController ()

@end

@implementation JPEditMovieViewController

//Fields for edit
@synthesize movieNameField = _movieNameField;
@synthesize haveSwitch = _haveSwitch;
@synthesize movie = _movie;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //Initializing fields
    self.movieNameField.text = self.movie.nameMovie;
    [self.haveSwitch setOn:self.movie.needMovie];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

//Fields in my movies edit window
- (void)movieDataChanged:(id)sender {
    self.movie.nameMovie = self.movieNameField.text;
    self.movie.needMovie = self.haveSwitch.isOn;
    
}

@end
