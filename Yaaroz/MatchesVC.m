//
//  MatchesVC.m
//  Yaaroz
//
//  Created by Mango SW on 05/12/2017.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "MatchesVC.h"

@interface MatchesVC ()

@end

@implementation MatchesVC
@synthesize profileImage1,profileImage2,profileImage3;

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    profileImage1.layer.cornerRadius = profileImage1.frame.size.width / 2;
    profileImage1.clipsToBounds = YES;
    
    profileImage2.layer.cornerRadius = profileImage2.frame.size.width / 2;
    profileImage2.clipsToBounds = YES;
    
    profileImage3.layer.cornerRadius = profileImage3.frame.size.width / 2;
    profileImage3.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
