//
//  XMLParser.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/27/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "XMLParser.h"
#import "movieInfo.h"

@implementation XMLParser
@synthesize MovieInfo, resultsArray;

- (XMLParser *) initXMLParser {
    self = [super init];
    // init array of review objects
    resultsArray = [[NSMutableArray alloc] init];
    return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict {
	
    if ([elementName isEqualToString:@"IMDBDocumentList"]) {
        MovieInfo = [[movieInfo alloc] init];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if (!currentElementValue) {
        // init the ad hoc string with the value
        currentElementValue = [[NSMutableString alloc] initWithString:string];
    } else {
        // append value to the ad hoc string
        [currentElementValue appendString:string];
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"item"])
    {
        // We reached the end of the XML document
        return;
    }
    
    if ([elementName isEqualToString:@"rating"])
    {
        // We are done with user entry – add the parsed review
        // object to our review array
        [resultsArray addObject:MovieInfo];
        // release review object
        MovieInfo = nil;
    }
    else
    {
        // The parser hit one of the element values.
        // This syntax is possible because Review object
        // property names match the XML review element names
        [MovieInfo setValue:currentElementValue forKey:elementName];
    }
    currentElementValue = nil;
}
@end
