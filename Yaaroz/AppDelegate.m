//
//  AppDelegate.m
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize tabBarController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
  
    return YES;
}

#pragma mark - TABBAR METHOD

-(void)OpenTabbar
{
    tabBarController = [[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier:@"TabbarController"];
    self.window.rootViewController = tabBarController;
  //  [self setImagesForTabBarItems];
}

-(void)setImagesForTabBarItems
{
    tabBarController = (TabbarController *) self.window.rootViewController;
    
    NSArray* imageNames = @[@"TABHome", @"TABStar",@"TABPlush",@"TABSearch", @"TABUser"];
    NSArray* selectedImageNames = @[@"TABHomeSelect",@"TABStarSelect",@"TABPlushSelect",@"TABSearchSelect", @"TABUserSelect"];
    [tabBarController.tabBar setBarTintColor:[UIColor whiteColor]];
    
    for (int i = 0; i <=4; i ++)
    {
        UIImage *img = [UIImage imageNamed:imageNames[i]];
        UIImage *imgSel = [UIImage imageNamed:selectedImageNames[i]];
        
        img = [img imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        imgSel = [imgSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        UITabBarItem* item = [tabBarController.tabBar.items objectAtIndex:i];
        item.image = img;
        item.selectedImage = imgSel;
    }
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    
}

- (void)HideTabbar : (BOOL) boolHighlight
{
    if (boolHighlight)
    {
        UITabBarController *rootController = (UITabBarController *)[[[[UIApplication sharedApplication]delegate] window] rootViewController];
        if ([rootController isKindOfClass:[UITabBarController class]])
        {
            [rootController.tabBar setHidden:YES];
        }
    }
    else
    {
        UITabBarController *rootController = (UITabBarController *)[[[[UIApplication sharedApplication]delegate] window] rootViewController];
        if ([rootController isKindOfClass:[UITabBarController class]])
        {
            [rootController.tabBar setHidden:NO];
        }
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
