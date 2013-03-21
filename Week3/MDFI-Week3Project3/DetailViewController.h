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
    IBOutlet UILabel *lblText;
    NSString *selectedLocation;
    IBOutlet MKMapView *mapView;
    IBOutlet UIButton *back;
}

//
////Information that would be displayed on the information detail page
//@property (nonatomic, retain) IBOutlet UILabel *businessTitle;
//@property (nonatomic, retain) IBOutlet UILabel *businessLatInfo;
//@property (nonatomic, retain) IBOutlet UILabel *businessLongInfo;
//@property (nonatomic, retain) IBOutlet LocationAnnotation *locationAnt;
//
//@property (nonatomic, retain) NSString *selectedLocation;
//
//-(IBAction)backButton:(id)sender;            //Back button

@end
