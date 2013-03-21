//
//  LocationAnnotation.h
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface LocationAnnotation : NSObject <MKAnnotation>

{
    NSString *titleOfBusiness;
    CLLocationCoordinate2D coordinates;
}

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;

@property (nonatomic, copy) NSString *titleOfBusiness;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinates;

@end
