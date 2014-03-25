//
//  Constants.h
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#ifndef What_Holiday_is_It_Constants_h
#define What_Holiday_is_It_Constants_h

#endif

static const NSString *HolidayTileStyleCustom = @"Custom";
static const NSString *HolidayTileStyleStandard = @"Standard";

typedef NS_ENUM(NSInteger, HolidayRecurrance) {
    HolidayRecurranceNone      = 0,
    HolidayRecurranceDaily     = 1,
    HolidayRecurranceWeekly    = 2,
    HolidayRecurranceMonthly   = 3,
    HolidayRecurranceQuarterly = 4,
    HolidayRecurranceYearly    = 5
};

typedef NS_ENUM(NSInteger, DayDisplayGeometery) {
    DayDisplayGeometeryTop    = 0,
    DayDisplayGeometeryLeft   = 0,
    DayDisplayGeometeryHeight = 140,
    DayDisplayGeometeryWidth  = 320
};

typedef NS_ENUM(NSInteger, AdViewGeometry) {
    AdViewGeometryLeft   = 0,
    AdViewGeometryHeight = 50,
    AdViewGeometryWidth  = 320
};

typedef NS_ENUM(NSInteger, AddHolidayTileGeometry) {
    AddHolidayTileGeometryLeft   = 0,
    AddHolidayTileGeometryHeight = 50,
    AddHolidayTileGeometryWidth  = 160
};

typedef NS_ENUM(NSInteger, SettingsTileGeometry) {
    SettingsTileGeometryLeft   = 160,
    SettingsTileGeometryHeight = 50,
    SettingsTileGeometryWidth  = 160
};