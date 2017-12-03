//
//  HomeVC.h
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"

@interface HomeVC : UIViewController
{
    
}
- (IBAction)Menu_Click:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *Explore_BTN;
@property (strong, nonatomic) IBOutlet UIButton *FindaRoom_BTN;
@property (strong, nonatomic) IBOutlet UILabel *ExploreLine_LBL;
@property (strong, nonatomic) IBOutlet UILabel *FindRoomLine_LBL;

- (IBAction)Tab_click:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *MainTBL;
@end
