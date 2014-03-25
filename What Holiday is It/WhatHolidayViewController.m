//
//  WhatHolidayViewController.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "WhatHolidayViewController.h"
#import "DayDisplayView.h"
#import "AddHolidayTileViewController.h"
#import "SettingsTileViewController.h"
#import "Constants.h"

@interface WhatHolidayViewController ()
@property (strong, nonatomic) DayDisplayView *dayDisplayView;
@property (strong, nonatomic) HolidayTileViewController *holidayTileController;
@property (strong, nonatomic) AddHolidayTileViewController *addHolidayTileViewController;
@property (strong, nonatomic) SettingsTileViewController *settingsTileViewController;
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

- (DayDisplayView *)dayDisplayView {
    if (!_dayDisplayView) {
        CGRect dateDisplayFrame = CGRectMake(DayDisplayGeometeryLeft, DayDisplayGeometeryTop, DayDisplayGeometeryWidth, DayDisplayGeometeryHeight);
        _dayDisplayView = [[DayDisplayView alloc] initWithFrame:dateDisplayFrame];
    }
    return _dayDisplayView;
}

- (HolidayTileViewController *)holidayTileController {
    if (!_holidayTileController) {
        _holidayTileController = [[HolidayTileViewController alloc] initWithHolidays: self.calendar];
    }
    
    return _holidayTileController;
}

- (AddHolidayTileViewController *)addHolidayTileViewController {
    if (!_addHolidayTileViewController) {
        _addHolidayTileViewController = [[AddHolidayTileViewController alloc] initWithNibName:nil bundle:nil];
    }
    
    return _addHolidayTileViewController;
}

- (SettingsTileViewController *)settingsTileViewController {
    if (!_settingsTileViewController) {
        _settingsTileViewController = [[SettingsTileViewController alloc] initWithNibName:nil bundle:nil];
    }
    
    return _settingsTileViewController;
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
    
    [self.view addSubview:self.dayDisplayView];
    [self.view addSubview:self.holidayTileController.view];
    [self.view addSubview:self.addHolidayTileViewController.view];
    [self.view addSubview:self.settingsTileViewController.view];
    [self.view addSubview:self.adView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.holidayTileController = nil;
    self.addHolidayTileViewController = nil;
    self.dayDisplayView = nil;
    self.adView = nil;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


@end
