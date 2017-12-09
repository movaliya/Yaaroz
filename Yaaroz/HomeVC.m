//
//  HomeVC.m
//  Yaaroz
//
//  Created by MaulikVaishali on 19/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "HomeVC.h"
#import "FindARoomCELL.h"
#import "BestPartnerCell.h"
#import "ExploreTBLCell.h"
#import "HotLocationCell.h"
#import "QuickAvailbleCell.h"
#import "RoomDetailVC.h"
@interface HomeVC ()<UICollectionViewDelegate,UICollectionViewDataSource>
{
    NSString *TabStr;
    NSMutableArray *HeaderArr;
}
@end

@implementation HomeVC
@synthesize Explore_BTN,ExploreLine_LBL,FindaRoom_BTN,FindRoomLine_LBL,MainTBL;
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    TabStr=@"Explore";
    
    MainTBL.backgroundColor=[UIColor colorWithRed:246.0f/255.0f green:246.0f/255.0f blue:246.0f/255.0f alpha:1.0f];
    
    HeaderArr=[[NSMutableArray alloc]initWithObjects:@"QUICK AVAILABLE",@"HOT LOCATION",@"BEST PARTNER",@"FUTERED ROOM",@"LOCAL TASTE",@"MOST VIEWD", nil];
    
    UINib *nib = [UINib nibWithNibName:@"FindARoomCELL" bundle:nil];
    [MainTBL setSeparatorInset:UIEdgeInsetsZero];
    [MainTBL registerNib:nib forCellReuseIdentifier:@"FindARoomCELL"];
    
    UINib *nib2 = [UINib nibWithNibName:@"ExploreTBLCell" bundle:nil];
    [MainTBL setSeparatorInset:UIEdgeInsetsZero];
    [MainTBL registerNib:nib2 forCellReuseIdentifier:@"ExploreTBLCell"];
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
        TabStr=@"Explore";
    }
    else
    {
        FindRoomLine_LBL.backgroundColor=[UIColor whiteColor];
        ExploreLine_LBL.backgroundColor=[UIColor blackColor];
        TabStr=@"Find A Room";
    }
    [MainTBL reloadData];
}


#pragma mark - TABLEVIEW methods
#pragma mark Table View CODE

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if ([TabStr isEqualToString:@"Explore"])
    {
        return 3;
    }
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([TabStr isEqualToString:@"Explore"])
    {
        return 1;
    }
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:  (NSIndexPath *)indexPath
{
    if ([TabStr isEqualToString:@"Find A Room"])
    {
        static NSString *CellIdentifier = @"FindARoomCELL";
        
        ExploreTBLCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        cell=nil;
        if (cell == nil)
        {
            cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        }
        cell.backgroundColor=[UIColor colorWithRed:246.0f/255.0f green:246.0f/255.0f blue:246.0f/255.0f alpha:1.0f];
        return cell;
    }
    else
    {
        static NSString *CellIdentifier = @"ExploreTBLCell";
        ExploreTBLCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        cell=nil;
        if (cell == nil)
        {
            cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        }
        
        UINib *nib2;
        if (indexPath.section==0)
        {
            nib2 = [UINib nibWithNibName:@"QuickAvailbleCell" bundle:nil];
            [cell.ExploreCollectionview registerNib:nib2 forCellWithReuseIdentifier:@"QuickAvailbleCell"];
            cell.ExploreCollectionview.tag=0;
        }
        else if (indexPath.section==1)
        {
            cell.GrayArrow.hidden=YES;
            nib2 = [UINib nibWithNibName:@"HotLocationCell" bundle:nil];
            [cell.ExploreCollectionview registerNib:nib2 forCellWithReuseIdentifier:@"HotLocationCell"];
            cell.ExploreCollectionview.tag=1;
        }
        else if (indexPath.section==2)
        {
            nib2 = [UINib nibWithNibName:@"BestPartnerCell" bundle:nil];
            [cell.ExploreCollectionview registerNib:nib2 forCellWithReuseIdentifier:@"BestPartnerCell"];
            cell.ExploreCollectionview.tag=2;
        }
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
        
        cell.ExploreCollectionview.delegate=self;
        cell.ExploreCollectionview.dataSource=self;
        //cell.ExploreCollectionview.parentIndexpath = indexPath;
        
        cell.ExploreCollectionview.pagingEnabled=NO;//optional
        
        cell.HeaderTitle_LBL.text=[HeaderArr objectAtIndex:indexPath.section];
        [cell.SeeAll_BTN addTarget:self action:@selector(SeeAll_Click:) forControlEvents:UIControlEventTouchUpInside];
        cell.SeeAll_BTN.tag=indexPath.section;
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
        [cell.ExploreCollectionview reloadData];
        cell.backgroundColor=[UIColor colorWithRed:246.0f/255.0f green:246.0f/255.0f blue:246.0f/255.0f alpha:1.0f];
        return cell;
    }
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([TabStr isEqualToString:@"Find A Room"])
    {
        return 225;
    }
    else
    {
        if (indexPath.section==0)
        {
            return 295;
        }
        else if (indexPath.section==1)
        {
            return 170;
        }
        else if (indexPath.section==2)
        {
            return 220;
        }
    }
    return 0.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if ([TabStr isEqualToString:@"Find A Room"])
    {
        return 10.0f;
    }
    return 10.; // you can have your own choice, of course
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([TabStr isEqualToString:@"Find A Room"])
    {
        RoomDetailVC *vcr = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"RoomDetailVC"];
        [self.navigationController pushViewController:vcr animated:YES];
    }
}


#pragma mark - COLLECTIONVIEW methods
#pragma mark Collection View CODE

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //NSArray *collectionViewArray =  [_arrayProducts [[(IndexedCollectionView *)collectionView parentIndexpath].row]objectForKey:@"inventory"];//arrProducts is an array where i get all the data from webservice
    
    // return [collectionViewArray count];
    
    return 10;
    
}

- (NSIndexPath *)indexPathForRowAtPoint:(CGPoint)point
{
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView.tag==0)
    {
        QuickAvailbleCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"QuickAvailbleCell" forIndexPath:indexPath];
       // cell.Place_IMG.image=[UIImage imageNamed:[PlacesArr objectAtIndex:indexPath.row]];
        return cell;
    }
    else if (collectionView.tag==1)
    {
        HotLocationCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HotLocationCell" forIndexPath:indexPath];
       // cell.Place_IMG.image=[UIImage imageNamed:[ExperiencesArr objectAtIndex:indexPath.row]];
        return cell;
    }
    else if (collectionView.tag==2)
    {
        BestPartnerCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BestPartnerCell" forIndexPath:indexPath];
       // cell.Place_IMG.image=[UIImage imageNamed:[PlacesArr objectAtIndex:indexPath.row]];
        return cell;
    }
    
    
    return nil;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 8;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if(isIphone5 || isiPhone4)
    {
        if (collectionView.tag==0)
        {
            return CGSizeMake(self.view.frame.size.width/1.0, 200.0f);
        }
        else if (collectionView.tag==1)
        {
            return CGSizeMake(self.view.frame.size.width/4, 150.0f);
        }
        else if (collectionView.tag==2)
        {
            return CGSizeMake(self.view.frame.size.width/4, 220.0f);
        }
        return CGSizeMake(self.view.frame.size.width/2.6, 255.0f);
    }
    else
    {
        if (collectionView.tag==0)
        {
            return CGSizeMake(self.view.frame.size.width/1.7, 260.0f);
        }
        if (collectionView.tag==1)
        {
            return CGSizeMake(self.view.frame.size.width/2.5, 140);
        }
        else if (collectionView.tag==2)
        {
            return CGSizeMake(self.view.frame.size.width/2.8, 180.0f);
        }
        return CGSizeMake(self.view.frame.size.width/2.6, 285.0f);
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
//    if (collectionView.tag==1)
//    {
//        HomeDetailView *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"HomeDetailView"];
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//    else if (collectionView.tag==4)
//    {
//        PlaceDetailPage *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PlaceDetailPage"];
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//    else
//    {
//        NSLog(@"collection path row is ----%ld",indexPath.row);
//        ExploreDetailView *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ExploreDetailView"];
//        [self.navigationController pushViewController:vc animated:YES];
//    }
    
    //    NSInteger tableindex = collectionView.parentIndexpath.row;
    //
    //    NSLog(@"collection path row is ----%ld",tableindex);
    
    
}

-(void)SeeAll_Click:(id)sender
{
}
@end
