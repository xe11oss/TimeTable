//
//  TTTopNavigationBar.m
//  TimeTable
//
//  Created by Youngchang on 2014. 5. 14..
//  Copyright (c) 2014년 ___XELLOSS___. All rights reserved.
//

#import "TTTopNavigationBar.h"

@implementation TTTopNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    [self GG_initialButtons:viewController];
    
    // adding menu button
    [self GG_addingMenuButton:viewController];
    
    [self setShadowImage:[UIImage new]];
}

- (void) GG_initialButtons:(UIViewController *)viewController
{
    //
    // init menu button
    //
    UIButton* menuButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* normalImage        = [UIImage imageNamed:@"mainbutton~iphone.png"];
    UIImage* highlightedImage   = [UIImage imageNamed:@"mainbutton_press~iphone.png"];
    CGRect frame = CGRectZero;
    frame.size = [normalImage size];
    [menuButton setFrame:frame];
    [menuButton setBackgroundImage:normalImage forState:UIControlStateNormal];
    [menuButton setBackgroundImage:highlightedImage forState:UIControlStateHighlighted];
    [menuButton addTarget:self
                   action:@selector(GG_menuButtonTouched:)
         forControlEvents:UIControlEventTouchUpInside];
    
    
    
    _menuButton = [[UIBarButtonItem alloc] initWithCustomView:menuButton];
    
    
    
}

- (void) GG_addingMenuButton:(UIViewController *)viewController
{
    if (_menuButton)
    {
        viewController.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:_menuButton, nil];
    }
}

- (void) GG_menuButtonTouched:(id)sender
{
    [[_navigationController slidingViewController] anchorTopViewTo:ECRight];
}

@end
