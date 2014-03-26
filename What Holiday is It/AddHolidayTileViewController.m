//
//  AddHolidayTileViewController.m
//  What Holiday is It
//
//  Created by Tom Carter on 3/24/14.
//  Copyright (c) 2014 Louglu. All rights reserved.
//

#import "AddHolidayTileViewController.h"
#import "AddHolidayTile.h"
#import "Constants.h"

@interface AddHolidayTileViewController ()

@end

@implementation AddHolidayTileViewController

- (UIButton *)addHolidayButton {
    if (!_addHolidayButton) {
        _addHolidayButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_addHolidayButton setTitle:@"Add Holiday" forState:UIControlStateNormal];
        [_addHolidayButton setFrame:CGRectMake(0, 0, AddHolidayTileGeometryWidth, AddHolidayTileGeometryHeight)];
        _addHolidayButton.backgroundColor = [UIColor clearColor];
        _addHolidayButton.tintColor = [UIColor whiteColor];
        [_addHolidayButton addTarget:self action:@selector(addHolidayButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _addHolidayButton;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
        CGFloat addButtonTop = screenHeight - (AdViewGeometryHeight + AddHolidayTileGeometryHeight);
        self.view = [[AddHolidayTile alloc] initWithFrame:CGRectMake(AddHolidayTileGeometryLeft, addButtonTop, AddHolidayTileGeometryWidth, AddHolidayTileGeometryHeight)];
        
        [self.view addSubview:self.addHolidayButton];
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

-(IBAction)addHolidayButtonTapped:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Add holiday" message:@"" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alert show];
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
