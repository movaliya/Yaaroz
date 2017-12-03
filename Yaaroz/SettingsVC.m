//
//  SettingsVC.m
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "SettingsVC.h"

@interface SettingsVC ()

@end

@implementation SettingsVC
@synthesize everyone_imge,onlyMutual_Image,cutomradio_Image,allMatch_Image,OnlyMatch_Image;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=YES;

    // Do any additional setup after loading the view.
}
- (IBAction)SideMenuBtn_Action:(id)sender
{
    [self.sideMenuViewController presentLeftMenuViewController];
}


- (IBAction)EveryoneBtn_Action:(id)sender
{
    
    everyone_imge.image=[UIImage imageNamed:@"ic_redio_selected"];
    onlyMutual_Image.image=[UIImage imageNamed:@"RadioButton"];
    cutomradio_Image.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)onlyMatchFrndBtnAction:(id)sender
{
    everyone_imge.image=[UIImage imageNamed:@"RadioButton"];
    onlyMutual_Image.image=[UIImage imageNamed:@"ic_redio_selected"];
    cutomradio_Image.image=[UIImage imageNamed:@"RadioButton"];

}
- (IBAction)CustomBtn_Action:(id)sender
{
    everyone_imge.image=[UIImage imageNamed:@"RadioButton"];
    onlyMutual_Image.image=[UIImage imageNamed:@"RadioButton"];
    cutomradio_Image.image=[UIImage imageNamed:@"ic_redio_selected"];
}

// Show Me Setting
- (IBAction)AllmatchesBtn_Action:(id)sender
{
    allMatch_Image.image=[UIImage imageNamed:@"ic_redio_selected"];
    OnlyMatch_Image.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)OnlyMatchBtn_Action:(id)sender
{
    allMatch_Image.image=[UIImage imageNamed:@"RadioButton"];
    OnlyMatch_Image.image=[UIImage imageNamed:@"ic_redio_selected"];
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
