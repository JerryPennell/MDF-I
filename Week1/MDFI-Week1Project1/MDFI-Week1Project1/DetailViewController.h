//
//  DetailViewController.h
//  MDFI-Week1Project1
//
//  Created by Wayne Pennell on 3/7/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
	
	IBOutlet UILabel *lblText;
	NSString *selectedMovie;
    IBOutlet UIButton *back;
    
}

@property (nonatomic, retain) NSString *selectedMovie;

-(IBAction)backButton:(id)sender;            //Back button

@end