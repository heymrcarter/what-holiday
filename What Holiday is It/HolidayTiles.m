//
//  HolidayTiles.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/24/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "HolidayTiles.h"

@implementation HolidayTiles

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [[[UIColor blackColor] colorWithAlphaComponent:0.2] setFill];
}


@end
