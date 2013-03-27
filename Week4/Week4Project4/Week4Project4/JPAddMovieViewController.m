//
//  JPAddMovieViewController.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "JPAddMovieViewController.h"
#import "JPMovieListViewController.h"
#import "JPMovie.h"

@interface JPAddMovieViewController ()

@end

@implementation JPAddMovieViewController

//Name of our movie
@synthesize movieNameField = _movieNameField;
@synthesize movieListViewController = _movieListViewController;

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
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(void)cancelButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(void)doneButtonPressed:(id)sender{
    //Creating a new movie
    JPMovie *newMovie = [[JPMovie alloc] initWithName:self.movieNameField.text needMovie:NO];
    
    //Adds in my new movie to my collection
    [self.movieListViewController.movies addObject:newMovie];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
//    //After making a change we need to refresh the list
//    [self.movieListViewController.tableView reloadData];
    
}
@end
