//
//  HolidayTileViewController.h
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calendar.h"
#import "HolidayTiles.h"

@interface HolidayTileViewController : UIViewController
@property (strong, nonatomic) NSArray *tiles; // Holiday *tile
- (HolidayTileViewController *)initWithHolidays:(Calendar *)holidays;
@end
