//
//  AppDelegate.m
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "LocationAnnotation.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Set up of all locations
    [self setUpAllLocations];
    UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    UINavigationController *navController1 = [[UINavigationController alloc] initWithRootViewController:viewController1];
    UIViewController *viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[navController1, viewController2];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

//Sets up 10 locations in an array
- (void)setUpAllLocations
{
    charlestonSC.latitude = 32.776566f;
    charlestonSC.longitude = -79.930922f;
    
    columbiaSC.latitude = 34.000710f;
    columbiaSC.longitude = -81.034814f;

    greenvilleSC.latitude = 34.852618f;
    greenvilleSC.longitude = -82.394010f;

    rockhillSC.latitude = 34.924867f;
    rockhillSC.longitude = -81.025078f;
    
    andersonSC.latitude = 34.503439f;
    andersonSC.longitude = -82.650133f;
    
    spartanburgSC.latitude = 34.949567f;
    spartanburgSC.longitude = -81.932048f;
    
    cloverSC.latitude = 35.111248f;
    cloverSC.longitude = -81.226465f;
    
    fortmillSC.latitude = 35.007370f;
    fortmillSC.longitude = -80.945076f;
    
    chesterSC.latitude = 34.704861;
    chesterSC.longitude = -81.214256f;
    
    winnsboroSC.latitude = 34.380701f;
    winnsboroSC.longitude = -81.086478f;
    
    
    
    LocationAnnotation *charleston = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Charleston, SC" coord:charlestonSC];
    LocationAnnotation *columbia = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Columbia, SC" coord:columbiaSC];
    LocationAnnotation *greenville = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Greenville, SC" coord:greenvilleSC];
    LocationAnnotation *rockhill = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Rock Hill, SC" coord:rockhillSC];
    LocationAnnotation *anderson = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Anderson, SC" coord:andersonSC];
    LocationAnnotation *spartanburg = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Spartanburg, SC" coord:spartanburgSC];
    LocationAnnotation *clover = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Clover, SC" coord:cloverSC];
    LocationAnnotation *fortmill = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Fort Mill, SC" coord:fortmillSC];
    LocationAnnotation *chester = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Chester, SC" coord:chesterSC];
    LocationAnnotation *winnsboro = [[LocationAnnotation alloc] initWithTitle:@"Red Tool Barn - Winnsboro, SC" coord:winnsboroSC];

    
    
    self.locDataArray = [[NSMutableArray alloc] initWithObjects: charleston, columbia, greenville, rockhill, anderson, spartanburg, clover, fortmill,chester, winnsboro, nil];
    
//    //Adding items to a NSDictionary for holding
//    NSDictionary *BusLocInDict = [NSDictionary dictionaryWithObject:self.locDataArray forKey:@"Businesslocations"];
//    
//    [self.locDataArray addObject:BusLocInDict];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
