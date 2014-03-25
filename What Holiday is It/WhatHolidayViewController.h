//
//  WhatHolidayViewController.h
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "Calendar.h"
#import "HolidayTileViewController.h"

@interface WhatHolidayViewController : UIViewController <ADBannerViewDelegate>
@property (strong, nonatomic) Calendar *calendar;
@end
