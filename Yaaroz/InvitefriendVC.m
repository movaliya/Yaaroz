//
//  InvitefriendVC.m
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "InvitefriendVC.h"

@interface InvitefriendVC ()

@end

@implementation InvitefriendVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Menu_Click:(id)sender
{
    [self.sideMenuViewController presentLeftMenuViewController];
}


@end
