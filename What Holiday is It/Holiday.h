//
//  Holiday.h
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Holiday : NSObject
@property (weak, nonatomic) NSNumber *id;
@property (weak, nonatomic) NSString *name;
@property (weak, nonatomic) NSDate *date;
@property (weak, nonatomic) NSNumber *recurrance;
@property (weak, nonatomic) NSString *source;
@property (weak, nonatomic) NSNumber *shouldAlert;

- (Holiday *) init;
//designated initializer
- (Holiday *) initWithId:(NSNumber *)id
                 AndName:(NSString *)name
                 AndDate:(NSDate *)date
           AndRecurrance:(NSNumber *)recurrance
               AndSource:(NSString *)source
          AndShouldAlert:(bool)shouldAlert;
@end
