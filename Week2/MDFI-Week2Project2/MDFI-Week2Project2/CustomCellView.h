//
//  CustomCellView.h
//  MDFI-Week2Project2
//
//  Created by Wayne Pennell on 3/13/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellView : UITableViewCell

//Custome cell created for article selection lists

@property (nonatomic, strong) IBOutlet UILabel *customCellTitle;
@property (nonatomic, strong) IBOutlet UILabel *customCellDate;

@end
