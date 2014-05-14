//
//  TTAppDelegate.h
//  TimeTable
//
//  Created by Youngchang on 2014. 5. 13..
//  Copyright (c) 2014년 ___XELLOSS___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (UIViewController *) findViewControllerFromStroyboardIdentifier:(NSString *)indentifierString;
@end
