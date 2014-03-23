//
//  Holiday.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "Holiday.h"

@implementation Holiday

- (Holiday *)init {
    return nil;
}

- (Holiday *) initWithId:(NSUInteger)id
                 AndName:(NSString *)name
                 AndDate:(NSDate *)date
           AndRecurrance:(NSUInteger)recurrance
               AndSource:(NSString *)source
          AndShouldAlert:(bool)shouldAlert
{
    self = [super init];
    
    if (self) {
        self.id = [NSNumber numberWithInt:id];
        self.name = name;
        self.date = date;
        self.recurrance = [NSNumber numberWithInt:recurrance];
        self.source = source;
        self.shouldAlert = [NSNumber numberWithBool:shouldAlert];
    }
    
    return self;
}

@end
