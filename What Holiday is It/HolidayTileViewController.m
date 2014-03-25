//
//  HolidayTileViewController.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/23/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "HolidayTileViewController.h"
#import "Holiday.h"
#import "HolidayTile.h"
#import "HolidayTiles.h"

@interface HolidayTileViewController ()

@end

@implementation HolidayTileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (HolidayTileViewController *)initWithHolidays:(Calendar *)calendar {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.view = [[HolidayTiles alloc] initWithFrame:CGRectMake(HolidayTilesGeometryLeft, HolidayTilesGeometryTop, HolidayTilesGeometryWidth, HolidayTilesGeometryHeight)];        
        
        int top = HolidayTileGeometryTop;
        for (id holiday in calendar.holidays) {
            if ([holiday isKindOfClass:[Holiday class]]) {
                HolidayTile *tile = [[HolidayTile alloc] initForHoliday:holiday WithFrame:CGRectMake(HolidayTileGeometryLeft, top, HolidayTileGeometryWidth, HolidayTilesGeometryHeight)];
                [self.view addSubview:tile];
                top += (HolidayTileGeometryHeight + HolidayTileGeometryTileOffset);
            }
        }
    }
    
    return self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
