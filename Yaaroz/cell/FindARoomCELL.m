//
//  FindARoomCELL.m
//  Yaaroz
//
//  Created by Mango SW on 02/12/2017.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "FindARoomCELL.h"

@implementation FindARoomCELL
@synthesize ProfileImageView,Price_LBL,Like_BTN,WatchList_BTN,description,title_LBL;

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
    ProfileImageView.layer.cornerRadius = ProfileImageView.frame.size.width / 2;
    ProfileImageView.clipsToBounds = YES;
    ProfileImageView.layer.borderWidth = 3.0f;
    ProfileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
