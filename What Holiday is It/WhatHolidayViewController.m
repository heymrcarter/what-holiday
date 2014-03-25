//
//  WhatHolidayViewController.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "WhatHolidayViewController.h"
#import "DayDisplayView.h"
#import "Constants.h"

@interface WhatHolidayViewController ()
@property (strong, nonatomic) HolidayTileViewController *holidayTileController;
@property (strong, nonatomic) ADBannerView *adView;
@end

@implementation WhatHolidayViewController

- (Calendar *)calendar {
    if (!_calendar) {
        NSMutableArray *holidays = [[NSMutableArray alloc] init];
        
        Holiday *holiday1 = [[Holiday alloc] initWithId:1 AndName:@"A Random Holiday" AndDate:[NSDate date] AndRecurrance:4 AndSource:@"Standard" AndShouldAlert:YES];
        Holiday *holiday2 = [[Holiday alloc] initWithId:1 AndName:@"Ass Grabbin' Day" AndDate:[NSDate date] AndRecurrance:1 AndSource:@"Custom" AndShouldAlert:YES];
        
        [holidays addObject:holiday1];
        [holidays addObject:holiday2];
        
        _calendar = [[Calendar alloc] initWithHolidays:holidays];
    }
    
    return _calendar;
}

- (ADBannerView *)adView {
    if (!_adView) {
        CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
        _adView = [[ADBannerView alloc] initWithFrame:CGRectMake(0, screenHeight - 50, 320, 50)];
        _adView.delegate = self;
    }
    
    return _adView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
    
    CGRect dateDisplayFrame = CGRectMake(DayDisplayGeometeryLeft, DayDisplayGeometeryTop, DayDisplayGeometeryWidth, DayDisplayGeometeryHeight);
    DayDisplayView *dateDisplay = [[DayDisplayView alloc] initWithFrame:dateDisplayFrame];
    
    self.holidayTileController = [[HolidayTileViewController alloc] initWithHolidays: self.calendar];
    
    [self.view addSubview:dateDisplay];
    [self.view addSubview:self.holidayTileController.view];
    [self.view addSubview:self.adView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.holidayTileController = nil;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


@end
