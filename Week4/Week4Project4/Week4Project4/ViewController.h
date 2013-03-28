//
//  ViewController.h
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    NSXMLParser *parser;
    
    //Data coming down from the website
    NSMutableData *requestData;
    
    NSInteger numItems;
    
    NSMutableArray *movieData;
    
}


@property (nonatomic, strong) IBOutlet UITextView *debugText;

@end
