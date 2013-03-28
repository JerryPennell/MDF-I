//
//  movieInfo.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "movieInfo.h"

@implementation movieInfo


-(id)initWithName:(NSString*)titleOfMovie ratingOfMovie:(NSString*)ratingOfMovie
{
    if ((self = [super init]))
    {
        titleMovie = titleOfMovie;
        ratingMovie = ratingOfMovie;
        
    }
    return self;
}


@end
