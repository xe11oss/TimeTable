//
//  TTTopNavigationViewController.m
//  TimeTable
//
//  Created by Youngchang on 2014. 5. 14..
//  Copyright (c) 2014년 ___XELLOSS___. All rights reserved.
//

#import "TTTopNavigationViewController.h"
#import "TTSlideMenuViewController.h"
#import "TTAppDelegate.h"

@interface TTTopNavigationViewController ()
@end

@implementation TTTopNavigationViewController

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
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self _initialViewLayout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) _initialViewLayout
{
    // setup slideMenu
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[TTSlideMenuViewController class]])
    {
        TTAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        
        self.slidingViewController.underLeftViewController  = [appDelegate findViewControllerFromStroyboardIdentifier:@"slideMenu"];
    }
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
}

@end
