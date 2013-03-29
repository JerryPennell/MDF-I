//
//  ViewController.m
//  Week4Project4
//
//  Created by Wayne Pennell on 3/26/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "ViewController.h"
#import "movieInfo.h"
#import "JPMovie.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    numItems = 0;
    
    //Place to just hold our data for movies
    movieData = [[NSMutableArray alloc] init];
    
    [super viewDidLoad];
    
    //movieInfo *movie = [[movieInfo alloc] init];
    
    NSString *title = @"Finding Nemo";
    
    inputTitle= [title stringByReplacingOccurrencesOfString:@" " withString:@"+"];
   // NSLog(@"This is data %@", inputTitle);
    NSString *movieName = [@"http://imdbapi.org/?title=" stringByAppendingString:inputTitle
                           ];
    
    movieName = [movieName stringByAppendingString:@"&type=xml"];
    //create our url
    url = [[NSURL alloc] initWithString:movieName];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        //Where we parse out or use login information
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        requestData = [NSMutableData data];
    }
    
   // NSData *xmlData = [self GetfileDataFromFile:@"movies.xml"];
    
    NSXMLParser *MovieParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    if (MovieParser != nil)
    {
        [MovieParser setDelegate:self];
        [MovieParser setShouldProcessNamespaces:NO];
        [MovieParser setShouldReportNamespacePrefixes:NO];
        [MovieParser setShouldResolveExternalEntities:NO];
        [MovieParser parse];
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
   if ([elementName isEqualToString:@"IMDBDocumentList"])
   {
       return;
   }
    
   if ([elementName isEqualToString:@"items"])
   {
        return;
   }

    
   if ([elementName isEqualToString:@"rating"])
   {
        
        //Is this a element
        NSString *ratingMovie = [attributeDict valueForKey:@"rating"];
        NSString *titleMovie = [attributeDict valueForKey:@"title"];
        
       
        
        movieInfo *movieInf = [[movieInfo alloc] initWithName:titleMovie ratingOfMovie:ratingMovie];
        if(movieInf != nil)
        {
            [movieData addObject:movieInf];
        }
    }
    
  
    
    
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)movieStuff
{
    NSString *tagName =@"rating";
    
    if ([tagName isEqualToString:@"rating"])
    {
        NSLog(@"Value %@",movieStuff);
        
    }
    
    
}

-(void)parser:(NSXMLParser*)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"IMDBDocumentList"])
    {
        return;
    }
}




-(NSData*)GetfileDataFromFile:(NSString*)filename
{
    NSString *filePath = nil;
    
    //create the filemanager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //get the path to the application documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    //create the fullpath to the data file
    filePath = [documentsDirectory stringByAppendingPathComponent:filename];
    
    //does the path and the fileName Exist?
    if ([fileManager fileExistsAtPath:filePath])
    {
        //returns back the NSData for the file
        return [NSData dataWithContentsOfFile:filePath];
    }
    return nil;
    
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
