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
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    UIViewController *viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[viewController1, viewController2];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

-(void) createFictionalLocations{
    CLLocationCoordinate2D charlestonSC;
    charlestonSC.latitude = 32.776566f;
    charlestonSC.longitude = -79.930922f;
    
    CLLocationCoordinate2D columbiaSC;
    columbiaSC.latitude = 34.000710f;
    columbiaSC.longitude = -81.034814f;
    
    CLLocationCoordinate2D greenvilleSC;
    greenvilleSC.latitude = 34.852618f;
    greenvilleSC.longitude = -82.394010f;
    
    CLLocationCoordinate2D rockhillSC;
    rockhillSC.latitude = 34.924867f;
    rockhillSC.longitude = -81.025078f;
    
    CLLocationCoordinate2D andersonSC;
    andersonSC.latitude = 34.503439f;
    andersonSC.longitude = -82.650133f;
    
    CLLocationCoordinate2D spartanburgSC;
    spartanburgSC.latitude = 34.949567f;
    spartanburgSC.longitude = -81.932048f;
    
    CLLocationCoordinate2D cloverSC;
    cloverSC.latitude = 35.111248f;
    cloverSC.longitude = -81.226465f;
    
    CLLocationCoordinate2D fortmillSC;
    fortmillSC.latitude = 34.704861f;
    fortmillSC.longitude = -81.214256f;
    
    CLLocationCoordinate2D chesterSC;
    chesterSC.latitude = 35.007370;
    chesterSC.longitude = -76.311035f;
    
    CLLocationCoordinate2D winnsboroSC;
    winnsboroSC.latitude = 34.380701f;
    winnsboroSC.longitude = -81.086478f;
    
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
