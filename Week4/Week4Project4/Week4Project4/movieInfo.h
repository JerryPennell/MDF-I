//
//  movieInfo.h
//  Week4Project4
//
//  Created by Wayne Pennell on 3/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface movieInfo : NSObject
{
    NSString *directorsMovie;
    NSString *writersMovie;
    NSString *imdb_urlMovie;
    NSString *titleMovie;
    
    NSString *ratingMovie;

}

@property (nonatomic, retain) NSString *directorsMovie;
@property (nonatomic, retain) NSString *writersMovie;
@property (nonatomic, retain) NSString *imdb_urlMovie;
@property (nonatomic, strong) NSString *titleMovie;
@property (nonatomic, retain) NSString *ratingMovie;

-(id)initWithName:(NSString*)titleOfMovie ratingOfMovie:(NSString*)ratingOfMovie;

@end
