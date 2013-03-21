//
//  DetailViewController.h
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//



#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "LocationAnnotation.h"

@interface DetailViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
    IBOutlet UIButton *back;
}

@property (nonatomic, strong) IBOutlet UILabel *locationTitle;
@property (nonatomic, strong) IBOutlet UILabel *locationLat;
@property (nonatomic, strong) IBOutlet UILabel *locationLon;
@property (nonatomic, strong) LocationAnnotation *location;

-(IBAction)backButton:(id)sender;            //Back button

@end