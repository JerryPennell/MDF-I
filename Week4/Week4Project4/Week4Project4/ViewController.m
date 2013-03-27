//
//  ViewController.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //create our url
    url = [[NSURL alloc] initWithString:@"http://imdbapi.org/?title=Finding+Nemo&type=xml"];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        //Where we parse out or use login information
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        requestData = [NSMutableData data];
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //Checking validity of data
    
    if (data != nil)
    {
        //add this data to our existing requestData
        [requestData appendData:data];
    }
    
}


// Called when you have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil)
    {
        _debugText.text = requestString;
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentDirectory = [paths objectAtIndex:0];
        if (documentDirectory != nil)
        {
            NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@", documentDirectory, @"movies.xml"];
            if (fullPath != nil)
            {
                [requestData writeToFile:fullPath atomically:true];
            }
        }
        
        NSLog(@"%@", requestString);

        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
