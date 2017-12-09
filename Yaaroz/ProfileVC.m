//
//  ProfileVC.m
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "ProfileVC.h"
#import "ASValueTrackingSlider.h"



@interface ProfileVC ()<ASValueTrackingSliderDataSource>
{
    
}
@property (weak, nonatomic) IBOutlet ASValueTrackingSlider *slider1;
@end

@implementation ProfileVC
@synthesize male_image,female_image,profilePict;
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // customize slider 1
    self.slider1.maximumValue = 100.0;
    self.slider1.popUpViewCornerRadius = 0.0;
    [self.slider1 setMaxFractionDigitsDisplayed:0];
    self.slider1.popUpViewColor = [UIColor colorWithHue:0.55 saturation:0.8 brightness:0.9 alpha:0.7];
    self.slider1.font = [UIFont fontWithName:@"GillSans-Bold" size:22];
    self.slider1.textColor = [UIColor colorWithHue:0.55 saturation:1.0 brightness:0.5 alpha:1];
    self.slider1.popUpViewWidthPaddingFactor = 1.0;
    
    
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
