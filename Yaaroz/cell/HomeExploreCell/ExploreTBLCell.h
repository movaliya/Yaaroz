//
//  ExploreTBLCell.h
//  Airbnb
//
//  Created by Kaushik on 06/07/17.
//  Copyright © 2017 BacancyMac-i7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExploreTBLCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UICollectionView *ExploreCollectionview;
@property (strong, nonatomic) IBOutlet UILabel *HeaderTitle_LBL;
@property (strong, nonatomic) IBOutlet UIButton *SeeAll_BTN;
@property (strong, nonatomic) IBOutlet UIImageView *GrayArrow;


@end
