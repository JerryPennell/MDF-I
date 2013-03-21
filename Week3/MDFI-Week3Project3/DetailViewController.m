//
//  DetailViewController.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //Customize here
    }
    return self;
}

- (void)viewDidLoad
{
    //Sets zoom level for detailview
    MKCoordinateSpan span;
    span.latitudeDelta=0.071719f;
    span.longitudeDelta=0.157242f;
    
    //sets region based off of location
    MKCoordinateRegion region;
    region.center = self.location.coordinate;
    region.span = span;
    mapView.region = region;
    
    //adds annotation
    [mapView addAnnotation:self.location];
    
    //adds information to the view from the array
    self.title = self.location.title;
    self.locationTitle.text = self.location.title;
    self.locationLat.text = [NSString stringWithFormat:@"%f", self.location.coordinate.latitude];
    self.locationLon.text = [NSString stringWithFormat:@"%f", self.location.coordinate.longitude];
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg1.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Back button in case you don't want to add an event
-(IBAction)backButton:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

@end

