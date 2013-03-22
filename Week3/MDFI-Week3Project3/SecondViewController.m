//
//  SecondViewController.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//



#import "SecondViewController.h"
#import "LocationAnnotation.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map View", @"Map View");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

- (void)loadView
{
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStyleBordered target:self action:@selector(backPressed:)];
    self.navigationItem.leftBarButtonItem = btn;
    
    [super loadView];
}

-(void)backPressed: (id)sender
{
    [self.navigationController popViewControllerAnimated: YES]; // or popToRoot... if required.
}

- (void)viewDidLoad
{
    //Sets zoom level for the map view
    MKCoordinateSpan span;
    span.latitudeDelta=2.488698f;
    span.longitudeDelta=5.751343f;
    
    //Sets what location should be centered
    CLLocationCoordinate2D location;
    location.latitude = 34.025348f;
    location.longitude = -80.958252f;
    
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
    AppDelegate *del = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    [mapView addAnnotations:del.locDataArray];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound) {
        // back button was pressed.  We know this is true because self is no longer
        // in the navigation stack.
    }
    [super viewWillDisappear:animated];
}

//Back button in case you don't want to add an event
-(IBAction)backButton:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}


@end

