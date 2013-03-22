//
//  LocationAnnotation.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//


#import "LocationAnnotation.h"

@implementation LocationAnnotation
@synthesize title, coordinate;


//Holds the title and coordinates
-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
    if ((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}

@end