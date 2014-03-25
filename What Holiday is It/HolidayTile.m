//
//  HolidayTile.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "HolidayTile.h"
#import "Constants.h"

@interface HolidayTile()
@property (strong, nonatomic) UILabel *holidayName;
@property (strong, nonatomic) UILabel *recurranceLabel;
@property (strong, nonatomic) UIImage *recurranceIcon;

@property (strong, nonatomic) UIColor *borderColor;

- (void)setHolidayRecurranceLabelFromRecurrance:(NSInteger)recurrance;
- (void)setTileBackgroundColor;
@end

@implementation HolidayTile

- (UIColor *)borderColor {
    if (!_borderColor) {
        _borderColor = [[UIColor blackColor] colorWithAlphaComponent:0.25f];
    }
    
    return _borderColor;
}

- (HolidayTile *)initForHoliday:(Holiday *)holiday WithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.holidayName.text = holiday.name;
        [self.holidayName setFont:[UIFont systemFontOfSize:24]];
        
        [self setHolidayRecurranceLabelFromRecurrance:[holiday.recurrance integerValue]];
        [self setTileBackgroundColor];
    }
    
    return self;
}

- (void)setHolidayRecurranceLabelFromRecurrance:(NSInteger)recurrance {
    switch (recurrance) {
        case HolidayRecurranceNone:
            self.recurranceLabel.text = @"";
            break;
        case HolidayRecurranceDaily:
            self.recurranceLabel.text = @"Daily";
            break;
        case HolidayRecurranceWeekly:
            self.recurranceLabel.text = @"Weekly";
            break;
        case HolidayRecurranceMonthly:
            self.recurranceLabel.text = @"Monthly";
            break;
        case HolidayRecurranceQuarterly:
            self.recurranceLabel.text = @"Quarterly";
            break;
        case HolidayRecurranceYearly:
            self.recurranceLabel.text = @"Yearly";
            break;
    }
}

- (void)setTileBackgroundColor {
    self.backgroundColor = [UIColor whiteColor];
    
    CALayer *bottomBorder = [CALayer layer];
    bottomBorder.frame = CGRectMake(0.0f, 70.0f, self.frame.size.width, 1.0f);
    bottomBorder.backgroundColor = self.borderColor.CGColor;
    [self.layer addSublayer:bottomBorder];
}

- (UILabel *)holidayName {
    if (!_holidayName) {
        _holidayName = [[UILabel alloc] initWithFrame:CGRectMake(HolidayTileNameLabelLeft, HolidayTileNameLabelTop, HolidayTileNameLabelWidth, HolidayTileNameLabelHeight)];
        [self addSubview:_holidayName];
    }
    
    return _holidayName;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
