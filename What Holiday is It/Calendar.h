//
//  Calendar.h
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Holiday.h"

@interface Calendar : NSObject
@property (strong, nonatomic) NSMutableArray *holidays;

- (Calendar *) init;
- (Calendar *) initWithHolidays:(NSMutableArray *) holidays;
- (void) addHoliday:(Holiday *)holiday;
- (void) removeHoliday:(Holiday *)holiday;
@end
