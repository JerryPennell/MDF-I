//
//  CustomCellView.m
//  MDFI-Week2Project2
//
//  Created by Wayne Pennell on 3/13/13.
//  Copyright (c) 2013 Wayne Pennell. All rights reserved.
//

#import "CustomCellView.h"

@implementation CustomCellView

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
