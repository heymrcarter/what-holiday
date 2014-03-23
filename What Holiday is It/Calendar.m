//
//  Calendar.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "Calendar.h"

@implementation Calendar

- (NSMutableArray *) calendar {
    if(!_calendar) {
        _calendar = [[NSMutableArray alloc] init];
    }
    
    return _calendar;
}

- (void) addHoliday:(Holiday *)holiday {
    if ([holiday isKindOfClass:[Holiday class]]) {
        [self.calendar addObject:holiday];
    }
}

- (void) removeHoliday:(Holiday *)holiday {
    if ([holiday isKindOfClass:[Holiday class]]) {
        [self.calendar removeObject:holiday];
    }
}

@end
