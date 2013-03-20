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
}


//Information that would be displayed on the information detail page
@property (nonatomic, strong) IBOutlet UILabel *businessTitle;
@property (nonatomic, strong) IBOutlet UILabel *businessLatInfo;
@property (nonatomic, strong) IBOutlet UILabel *businessLongInfo;
@property (nonatomic, strong) IBOutlet LocationAnnotation *locationAnt;

//NSArray *businessNamesUI;
//NSArray *businessLatLocations;
//NSArray *businessLongLocations;

@end
