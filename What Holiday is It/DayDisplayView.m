//
//  DayDisplayView.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "DayDisplayView.h"

@interface DayDisplayView()
@property (strong, nonatomic) NSDateFormatter *formatter;
@end

@implementation DayDisplayView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.dayDescription];
        [self addSubview:self.dateDisplay];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [[UIColor blackColor] setFill];
    UIRectFill(CGRectInset(self.bounds, 100, 100));
}

- (UILabel *)dayDescription {
    if (!_dayDescription) {
        _dayDescription = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 320, 50)];
        _dayDescription.text = @"TODAY";
        _dayDescription.textColor = [UIColor whiteColor];
        _dayDescription.textAlignment = NSTextAlignmentCenter;
        [_dayDescription setFont:[UIFont systemFontOfSize:40]];
    }
    
    return _dayDescription;
}

- (UILabel *)dateDisplay {
    if (!_dateDisplay) {
        _dateDisplay = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 320, 30)];
        _dateDisplay.text = [self.formatter stringFromDate:[NSDate date]];
        _dateDisplay.textAlignment = NSTextAlignmentCenter;
        _dateDisplay.textColor = [UIColor whiteColor];
        [_dateDisplay setFont:[UIFont systemFontOfSize:20]];
    }
    
    return _dateDisplay;
}

- (NSDateFormatter *)formatter {
    if (!_formatter) {
        _formatter = [[NSDateFormatter alloc] init];
        [_formatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
        [_formatter setDateStyle:NSDateFormatterLongStyle];
    }
    
    return _formatter;
}

@end
