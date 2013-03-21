//
//  AppDelegate.h
//  MDFI-Week3Project3
//
//  Created by Wayne Pennell on 3/19/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    //Locations
    CLLocationCoordinate2D charlestonSC, columbiaSC, greenvilleSC, rockhillSC, andersonSC, spartanburgSC, cloverSC, fortmillSC, chesterSC, winnsboroSC;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

//Locations holding
@property (strong, nonatomic) NSMutableArray *locDataArray;




@end
