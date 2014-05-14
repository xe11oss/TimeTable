//
//  TTSlideMenuViewController.m
//  TimeTable
//
//  Created by Youngchang on 2014. 5. 14..
//  Copyright (c) 2014년 ___XELLOSS___. All rights reserved.
//

#import "TTSlideMenuViewController.h"
#import "ECSlidingViewController.h"

@interface TTSlideMenuViewController ()

@end

@implementation TTSlideMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.slidingViewController setAnchorRightRevealAmount:268.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
    
    self.title = NSLocalizedString(@"시간표 목록", @"timeTableList");
    [_titleLabel setText:self.title];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)setttingButtonTouched:(id)sender {
}

- (IBAction)addButtonTouched:(id)sender {
}
@end
