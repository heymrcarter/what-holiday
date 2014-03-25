//
//  Calendar.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "Calendar.h"

@implementation Calendar

- (Calendar *)init {
    self = [super init];
    return self;
}

- (Calendar *)initWithHolidays:(NSMutableArray *)holidays {
    self = [super init];
    
    if (self) {
        self.holidays = holidays;
    }
    
    return self;
}

- (NSMutableArray *) holidays {
    if(!_holidays) {
        _holidays = [[NSMutableArray alloc] init];
    }
    
    return _holidays;
}

- (void) addHoliday:(Holiday *)holiday {
    if ([holiday isKindOfClass:[Holiday class]]) {
        [self.holidays addObject:holiday];
    }
}

- (void) removeHoliday:(Holiday *)holiday {
    if ([holiday isKindOfClass:[Holiday class]]) {
        [self.holidays removeObject:holiday];
    }
}

@end
