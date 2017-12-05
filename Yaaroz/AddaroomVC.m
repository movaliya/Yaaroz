//
//  AddaroomVC.m
//  Yaaroz
//
//  Created by MaulikVaishali on 24/11/17.
//  Copyright © 2017 Vaishali Patel. All rights reserved.
//

#import "AddaroomVC.h"

@interface AddaroomVC ()

@end

@implementation AddaroomVC
@synthesize date_From_TXT,date_To_TXT;
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=YES;
    
    
    [self TodateFill];
    [self FromdateFill];
}
-(void)TodateFill
{
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    [datePicker setDate:[NSDate date]];
    datePicker.datePickerMode = UIDatePickerModeDate;
    datePicker.backgroundColor=[UIColor whiteColor];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [datePicker addTarget:self action:@selector(dateTextField:) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolbar.barStyle   = UIBarStyleBlackTranslucent;
    
    UIBarButtonItem *itemDone  = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:date_To_TXT action:@selector(resignFirstResponder)];
    UIBarButtonItem *itemSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    toolbar.items = @[itemSpace,itemDone];
    
    date_To_TXT.inputAccessoryView = toolbar;
    [date_To_TXT setInputView:datePicker];
}

-(void)FromdateFill
{
    
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    [datePicker setDate:[NSDate date]];
    datePicker.datePickerMode = UIDatePickerModeDate;
    datePicker.backgroundColor=[UIColor whiteColor];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [datePicker addTarget:self action:@selector(dateTextField1:) forControlEvents:UIControlEventValueChanged];
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolbar.barStyle   = UIBarStyleBlackTranslucent;
    
    UIBarButtonItem *itemDone  = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:date_From_TXT action:@selector(resignFirstResponder)];
    UIBarButtonItem *itemSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    toolbar.items = @[itemSpace,itemDone];
    
    date_From_TXT.inputAccessoryView = toolbar;
    [date_From_TXT setInputView:datePicker];
}

-(void) dateTextField:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)date_To_TXT.inputView;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    NSDate *eventDate = picker.date;
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    
    NSString *dateString = [dateFormat stringFromDate:eventDate];
    date_To_TXT.text = [NSString stringWithFormat:@"%@",dateString];
}
-(void) dateTextField1:(id)sender
{
    UIDatePicker *picker = (UIDatePicker*)date_From_TXT.inputView;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    NSDate *eventDate = picker.date;
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    
    NSString *dateString = [dateFormat stringFromDate:eventDate];
    date_From_TXT.text = [NSString stringWithFormat:@"%@",dateString];
}

- (IBAction)currentRommate_gender_click1:(id)sender
{
    self.currentRoommate_Image1.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.currentRoommate_image2.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)currentRoommate_gender_click2:(id)sender
{
    self.currentRoommate_Image1.image=[UIImage imageNamed:@"RadioButton"];
    self.currentRoommate_image2.image=[UIImage imageNamed:@"ic_redio_selected"];
}

- (IBAction)lookingGenter_btn_click1:(id)sender
{
    self.Lookingfor_gender_image1.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.Lookingfor_gender_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.Lookingfor_gender_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)lookingGenter_btn_click2:(id)sender
{
    self.Lookingfor_gender_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.Lookingfor_gender_image2.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.Lookingfor_gender_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)lookingGenter_btn_click3:(id)sender
{
    self.Lookingfor_gender_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.Lookingfor_gender_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.Lookingfor_gender_image3.image=[UIImage imageNamed:@"ic_redio_selected"];
}


- (IBAction)furnishedBed_btn_click1:(id)sender
{
    self.furnishbed_image1.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.furnishbed_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.furnishbed_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)furnishedBed_btn_click2:(id)sender
{
    self.furnishbed_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.furnishbed_image2.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.furnishbed_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)furnishedBed_btn_click3:(id)sender
{
    self.furnishbed_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.furnishbed_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.furnishbed_image3.image=[UIImage imageNamed:@"ic_redio_selected"];
}


- (IBAction)petAllowed_btn_click1:(id)sender
{
    self.petAllow_image1.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.petAllow_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.petAllow_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)petAllowed_btn_click2:(id)sender
{
    self.petAllow_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.petAllow_image2.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.petAllow_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)petAllowed_btn_click3:(id)sender
{
    self.petAllow_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.petAllow_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.petAllow_image3.image=[UIImage imageNamed:@"ic_redio_selected"];
}


- (IBAction)bathroom_btn_click1:(id)sender
{
    self.bathroom_image1.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.bathroom_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.bathroom_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)bathroom_btn_click2:(id)sender
{
    self.bathroom_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.bathroom_image2.image=[UIImage imageNamed:@"ic_redio_selected"];
    self.bathroom_image3.image=[UIImage imageNamed:@"RadioButton"];
}
- (IBAction)bathroom_btn_click3:(id)sender
{
    self.bathroom_image1.image=[UIImage imageNamed:@"RadioButton"];
    self.bathroom_image2.image=[UIImage imageNamed:@"RadioButton"];
    self.bathroom_image3.image=[UIImage imageNamed:@"ic_redio_selected"];
}


- (IBAction)MenuBtn_Click:(id)sender
{
      [self.sideMenuViewController presentLeftMenuViewController];
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
