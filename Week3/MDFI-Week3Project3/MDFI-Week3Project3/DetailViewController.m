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
        // Custom initialization
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
    region.center = self.locationAnt.coordinate;
    region.span = span;
    mapView.region = region;
    
    //adds annotation
    [mapView addAnnotation:self.locationAnt];
    
    //adds information to the view from the array
    self.title = self.locationAnt.title;
    self.businessTitle.text = self.locationAnt.title;
    self.businessLongInfo.text = [NSString stringWithFormat:@"%f", self.locationAnt.coordinate.latitude];
    self.businessLongInfo.text = [NSString stringWithFormat:@"%f", self.locationAnt.coordinate.longitude];

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
