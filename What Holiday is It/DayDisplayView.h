//
//  DayDisplayView.h
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DayDisplayView : UIView
@property (strong, nonatomic) UILabel *dayDescription;
@property (strong, nonatomic) UILabel *dateDisplay;
@end

typedef NS_ENUM(NSInteger, DayDisplayGeometery) {
    DayDisplayGeometeryTop    = 0,
    DayDisplayGeometeryLeft   = 0,
    DayDisplayGeometeryHeight = 140,
    DayDisplayGeometeryWidth  = 320
};