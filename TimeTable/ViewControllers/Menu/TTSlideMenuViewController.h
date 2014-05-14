//
//  TTSlideMenuViewController.h
//  TimeTable
//
//  Created by Youngchang on 2014. 5. 14..
//  Copyright (c) 2014년 ___XELLOSS___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTSlideMenuViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (IBAction)setttingButtonTouched:(id)sender;
- (IBAction)addButtonTouched:(id)sender;
@end
