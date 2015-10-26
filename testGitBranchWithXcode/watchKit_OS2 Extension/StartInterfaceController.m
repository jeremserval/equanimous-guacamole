//
//  StartInterfaceController.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 20/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "StartInterfaceController.h"
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface StartInterfaceController ()

@property (nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, strong) WCSession *session;


@end

@implementation StartInterfaceController
@synthesize labelMenuLieux = _labelMenuLieux;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Retrieve all tags of user map(s)
   
    /*
     
     ** Get Location
     
    self.locationManager = [CLLocationManager new];
    self.locationManager.delegate = self;
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager requestLocation];
    
    NSLog(@"loca : %@", [self.locationManager location]);
    
    
    
    
     ** Get Distance 
     
    NSLog(@"LOCATION ");
    CLLocation *restaurnatLoc = [[CLLocation alloc] initWithLatitude:48.817101 longitude:2.301491];
    CLLocation *restaurnatLoc2 = [[CLLocation alloc] initWithLatitude:48.819719 longitude:2.3033603];
    
    CLLocationDistance meters = [restaurnatLoc distanceFromLocation:restaurnatLoc2];
    NSLog(@"meters : %f", meters);
    
    */
   
    /*
    NSData *tagsInPref = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEYDUTEST"];
    NSString *tags;
    if (tagsInPref) {
        tags = [[NSKeyedUnarchiver unarchiveObjectWithData:tagsInPref] mutableCopy];
        NSLog(@"tag :%@", tags);
    }
    else
        NSLog(@"noope");
    
    */
    // Configure interface objects here.
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    NSLog(@"loca : %@",  [locations description]);
    
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    
}

-(void)handleUserActivity:(NSDictionary *)userInfo {
     NSLog(@"handle : %@", [userInfo objectForKey:@"TOTO"]);

    if ([[userInfo objectForKey:@"ISFROMGLANCE"] isEqualToString:@"YES"])
    {
          [self presentControllerWithNames:@[@"Home", @"Home",@"Home", @"Home", @"Home"] contexts:@[@"test 1", @"avion", @"Orange", @"test", @"5"]];
    }
    
}


- (IBAction)showPlaces {
    
    
    [self presentControllerWithNames:@[@"Home", @"Home",@"Home", @"Home", @"Home"] contexts:@[@"test 1", @"avion", @"Orange", @"test", @"5"]];
  //  [WKInterfaceController reloadRootControllersWithNames:@[@"Home", @"Home",@"Home", @"Home", @"Home"] contexts:@[@"test 1", @"avion", @"Orange", @"test", @"5"]];
}

- (void)willActivate {
    
    NSLog(@"%@", NSStringFromCGRect(self.contentFrame));
    
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    _session = [WCSession defaultSession];
    _session.delegate = self;
    [_session activateSession];
    
    
   /* NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.JeremPerso.testGitBranchWithXcode.watchkitapp.watchkitextension.shareDefaults"];
  ///  NSString *value = [userDefaults objectForKey:@"connectWithWatch"];
    NSLog(@"%@",userDefaults.dictionaryRepresentation.description);
    NSLog(@"value from connectWithWatch :%@", [userDefaults objectForKey:@"connectWithWatch"]);
    */
}

-(void)session:(WCSession *)session didReceiveApplicationContext:(NSDictionary<NSString *,id> *)applicationContext
{
    int numbButton = [[applicationContext objectForKey:@"buttonTouch"] integerValue];
    
    NSLog(@"numbero du boutton touch :%d", numbButton);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



