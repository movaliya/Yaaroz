//
//  ProfileVC.m
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "ProfileVC.h"

@interface ProfileVC ()

@end

@implementation ProfileVC
@synthesize male_image,female_image,profilePict;


- (void)viewDidLoad
{
    [super viewDidLoad];
    profilePict.layer.cornerRadius = profilePict.frame.size.width / 2;
    profilePict.clipsToBounds = YES;
    
    
}
- (IBAction)maleRadioBtn_Action:(id)sender
{
    male_image.image=[UIImage imageNamed:@"ic_redio_selected"];
    female_image.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)femaleRadioBtn_Action:(id)sender
{
    male_image.image=[UIImage imageNamed:@"RadioButton"];
    female_image.image=[UIImage imageNamed:@"ic_redio_selected"];
   
}
- (IBAction)sumitBtn_Action:(id)sender {
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
