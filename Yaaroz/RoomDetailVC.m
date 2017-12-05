//
//  RoomDetailVC.m
//  Yaaroz
//
//  Created by Mango SW on 05/12/2017.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "RoomDetailVC.h"


@interface RoomDetailVC ()<MKMapViewDelegate>

@end

@implementation RoomDetailVC
@synthesize profilePict;

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    profilePict.layer.cornerRadius = profilePict.frame.size.width / 2;
    profilePict.clipsToBounds = YES;
    self.googlemap.delegate = self;

}
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.googlemap setRegion:[self.googlemap regionThatFits:region] animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Where am I?";
    point.subtitle = @"I'm here!!!";
    
    [self.googlemap addAnnotation:point];

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
