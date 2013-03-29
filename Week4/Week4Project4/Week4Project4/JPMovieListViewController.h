//
//  JPMovieListViewController.h
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@class movieInfo;

@interface JPMovieListViewController : UITableViewController
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    
    //Data coming down from the website
    NSMutableData *requestData;
}

@property (nonatomic, strong) NSMutableArray *movies;

@property (nonatomic, retain) NSString *inputTitle;

-(IBAction)editButtonPressed:(id)sender;

@property (nonatomic, strong) movieInfo *movieStuff;



@end
