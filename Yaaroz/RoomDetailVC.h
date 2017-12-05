//
//  RoomDetailVC.h
//  Yaaroz
//
//  Created by Mango SW on 05/12/2017.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface RoomDetailVC : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *profilePict;

@property (weak, nonatomic) IBOutlet MKMapView *googlemap;

@end
