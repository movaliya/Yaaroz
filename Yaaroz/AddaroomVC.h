//
//  AddaroomVC.h
//  Yaaroz
//
//  Created by MaulikVaishali on 24/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"
@interface AddaroomVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *date_From_TXT;
@property (weak, nonatomic) IBOutlet UITextField *date_To_TXT;
@property (weak, nonatomic) IBOutlet UITextField *bathroom_To_TXT;
@property (weak, nonatomic) IBOutlet UIImageView *currentRoommate_Image1;
@property (weak, nonatomic) IBOutlet UIImageView *currentRoommate_image2;
@property (weak, nonatomic) IBOutlet UIImageView *Lookingfor_gender_image1;
@property (weak, nonatomic) IBOutlet UIImageView *Lookingfor_gender_image2;
@property (weak, nonatomic) IBOutlet UIImageView *Lookingfor_gender_image3;
@property (weak, nonatomic) IBOutlet UIImageView *furnishbed_image1;
@property (weak, nonatomic) IBOutlet UIImageView *furnishbed_image2;
@property (weak, nonatomic) IBOutlet UIImageView *furnishbed_image3;
@property (weak, nonatomic) IBOutlet UIImageView *petAllow_image1;
@property (weak, nonatomic) IBOutlet UIImageView *petAllow_image2;
@property (weak, nonatomic) IBOutlet UIImageView *petAllow_image3;
@property (weak, nonatomic) IBOutlet UIImageView *bathroom_image1;
@property (weak, nonatomic) IBOutlet UIImageView *bathroom_image2;
@property (weak, nonatomic) IBOutlet UIImageView *bathroom_image3;

@end
