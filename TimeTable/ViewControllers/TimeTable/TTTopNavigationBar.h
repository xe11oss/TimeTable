//
//  TTTopNavigationBar.h
//  TimeTable
//
//  Created by Youngchang on 2014. 5. 14..
//  Copyright (c) 2014년 ___XELLOSS___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h"
#import "TTTopNavigationViewController.h"

@interface TTTopNavigationBar : UINavigationBar
{
    UIBarButtonItem *_menuButton;
}

@property (nonatomic, weak) IBOutlet TTTopNavigationViewController* navigationController;
@end
