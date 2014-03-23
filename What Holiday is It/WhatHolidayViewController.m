//
//  WhatHolidayViewController.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "WhatHolidayViewController.h"
#import "DayDisplayView.h"

@interface WhatHolidayViewController ()

@end

@implementation WhatHolidayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
    CGRect statusBar = [UIApplication sharedApplication].statusBarFrame;
    DayDisplayView *dateDisplay = [[DayDisplayView alloc] initWithFrame:CGRectMake(0,0, statusBar.size.width, 140)];
    [self.view addSubview:dateDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
