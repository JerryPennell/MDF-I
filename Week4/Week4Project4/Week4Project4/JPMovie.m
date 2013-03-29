//
//  JPMovie.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "JPMovie.h"

@implementation JPMovie

@synthesize nameMovie = _nameMovie;
@synthesize needMovie = _needMovie;

-(id)initWithName:(NSString *)nameMovie needMovie:(BOOL)needMovie{
    
    self = [super init];
    
    if (self) {
        self.nameMovie = @"Finding Nemo";
        self.needMovie = needMovie;
        
    }
    return self;
}


@end
