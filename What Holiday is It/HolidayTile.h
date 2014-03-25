//
//  HolidayTile.h
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Holiday.h"

@interface HolidayTile : UIView
- (HolidayTile *)initForHoliday:(Holiday *)holiday WithFrame:(CGRect)frame;
@end

typedef NS_ENUM(NSInteger, HolidayTileGeometry) {
    HolidayTileGeometryTop        = 0,
    HolidayTileGeometryLeft       = 0,
    HolidayTileGeometryHeight     = 70,
    HolidayTileGeometryWidth      = 320,
    HolidayTileGeometryTileOffset = 1
};

typedef NS_ENUM(NSInteger, HolidayTileNameLabel) {
    HolidayTileNameLabelTop    = 0,
    HolidayTileNameLabelLeft   = 10,
    HolidayTileNameLabelHeight = 70,
    HolidayTileNameLabelWidth  = 215
};