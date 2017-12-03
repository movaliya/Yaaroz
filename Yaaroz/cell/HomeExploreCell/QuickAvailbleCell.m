//
//  QuickAvailbleCell.m
//  Yaaroz
//
//  Created by Mango SW on 03/12/2017.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "QuickAvailbleCell.h"

@implementation QuickAvailbleCell
@synthesize ProfilePictIMVW;
- (void)awakeFromNib {
    [super awakeFromNib];
    
    ProfilePictIMVW.layer.cornerRadius = ProfilePictIMVW.frame.size.width / 2;
    ProfilePictIMVW.clipsToBounds = YES;
    ProfilePictIMVW.layer.borderWidth = 3.0f;
    ProfilePictIMVW.layer.borderColor = [UIColor whiteColor].CGColor;
}

@end
