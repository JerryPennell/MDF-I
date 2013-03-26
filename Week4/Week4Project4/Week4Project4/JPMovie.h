//
//  JPMovie.h
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPMovie : NSObject

@property (nonatomic, strong) NSString *nameMovie;

@property (nonatomic, assign) BOOL needMovie;

-(id)initWithName:(NSString *)nameMovie needMovie:(BOOL)needMovie;

@end
