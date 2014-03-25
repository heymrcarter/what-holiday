//
//  SettingsTileViewController.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/25/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "SettingsTileViewController.h"
#import "SettingsTile.h"
#import "Constants.h"

@interface SettingsTileViewController ()

@end

@implementation SettingsTileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
        CGFloat settingsButtonTop = screenHeight - (AdViewGeometryHeight + AddHolidayTileGeometryHeight);
        self.view = [[SettingsTile alloc] initWithFrame:CGRectMake(SettingsTileGeometryLeft, settingsButtonTop, SettingsTileGeometryWidth, SettingsTileGeometryHeight)];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
