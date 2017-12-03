//
//  HomeVC.m
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()

@end

@implementation HomeVC
@synthesize Explore_BTN,ExploreLine_LBL,FindaRoom_BTN,FindRoomLine_LBL;

- (void)viewDidLoad
{
    

    
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)Menu_Click:(id)sender
{
      [self.sideMenuViewController presentLeftMenuViewController];
}

- (IBAction)Tab_click:(id)sender
{
    if ([sender isEqual:Explore_BTN])
    {
        ExploreLine_LBL.backgroundColor=[UIColor whiteColor];
        FindRoomLine_LBL.backgroundColor=[UIColor blackColor];
        
    }
    else
    {
        FindRoomLine_LBL.backgroundColor=[UIColor whiteColor];
        ExploreLine_LBL.backgroundColor=[UIColor blackColor];
    }
    
}

@end
