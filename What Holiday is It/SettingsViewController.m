//
//  SettingsViewController.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/25/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "SettingsViewController.h"
#import "Settings.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UIScreen *mainScreen = [UIScreen mainScreen];
        self.view = [[Settings alloc] initWithFrame:CGRectMake(SettingsGeometryLeft, SettingsGeometryTop, mainScreen.bounds.size.width, mainScreen.bounds.size.height)];
        
        NSLog(@"%@", self.view);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
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
