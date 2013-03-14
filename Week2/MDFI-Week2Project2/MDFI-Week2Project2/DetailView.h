//
//  DetailView.h
//  MDFI-Week2Project2
//
//  Created by Wayne Pennell on 3/13/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailView : UIViewController


//Labels for the detailed view of the Table view - sets the cell to the article

@property (nonatomic, strong) IBOutlet UILabel *articlesTitle;
@property (nonatomic, strong) IBOutlet UITextView *articlesSummary;
@property (nonatomic, strong) IBOutlet UITextView *articlesLink;
@property (nonatomic, strong) IBOutlet UILabel *articlesDate;

@end
