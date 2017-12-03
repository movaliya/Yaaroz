//
//  AppDelegate.h
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabbarController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    
}
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)  TabbarController *tabBarController;;


-(void)OpenTabbar;
-(void)HideTabbar:(BOOL)boolHighlight;
@end

