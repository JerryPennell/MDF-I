//
//  XMLParser.h
//  Week4Project4
//
//  Created by Wayne Pennell on 3/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <Foundation/Foundation.h>

@class movieInfo;

@interface XMLParser : NSObject <NSXMLParserDelegate>
{
    NSMutableString *currentElementValue;
    movieInfo *MovieInfo;
    NSMutableArray *resultsArray;
}

@property (nonatomic, strong) movieInfo *MovieInfo;
@property (nonatomic, strong) NSMutableArray *resultsArray;

- (XMLParser *) initXMLParser;

@end
