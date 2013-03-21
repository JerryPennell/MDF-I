//
//  SecondViewController.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "SecondViewController.h"
#import "LocationAnnotation.h"
#import "FirstViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map Details", @"Map Details");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //Sets zoom level for the map view
    MKCoordinateSpan span;
    span.latitudeDelta=2.488698f;
    span.longitudeDelta=5.751343f;
    
    //Sets what location should be centered
    CLLocationCoordinate2D location;
    location.latitude = 40.913513f;
    location.longitude = -77.4646f;
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [mapView removeAnnotations:mapView.annotations];
    
    //Shares the custom inforomation in appdelegate with the second view
    FirstViewController *del = (FirstViewController*)[[UIApplication sharedApplication] delegate];
    
    [mapView addAnnotations:del.locDataArray];
    
 
    
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
     



@end
