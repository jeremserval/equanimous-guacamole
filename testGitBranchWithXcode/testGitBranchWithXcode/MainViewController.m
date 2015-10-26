//
//  MainViewController.m
//  testGitBranchWithXcode
//
//  Created by Jeremie serval on 26/10/2015.
//  Copyright © 2015 Jeremie serval. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) WCSession *session;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"test");
    _session = [WCSession defaultSession];
    _session.delegate = self;
    [_session activateSession];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(id)sender {
    NSDictionary *applicationDict = @{@"buttonTouch":[NSNumber numberWithInt:1]};
    [self.session updateApplicationContext:applicationDict error:nil];

}
- (IBAction)button2:(id)sender {
    NSDictionary *applicationDict = @{@"buttonTouch":[NSNumber numberWithInt:2]};
    [self.session updateApplicationContext:applicationDict error:nil];

}
- (IBAction)button3:(id)sender {
    NSDictionary *applicationDict = @{@"buttonTouch":[NSNumber numberWithInt:3]};
    [self.session updateApplicationContext:applicationDict error:nil];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
