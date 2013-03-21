//
//  SecondViewController.h
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "AppDelegate.h"

@interface SecondViewController : UIViewController <UIApplicationDelegate>
{
    //This is where the map will appear on the UI
    IBOutlet MKMapView *mapView;
}

@end
