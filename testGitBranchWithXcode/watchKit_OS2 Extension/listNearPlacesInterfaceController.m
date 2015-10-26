//
//  listNearPlacesInterfaceController.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 23/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "listNearPlacesInterfaceController.h"

@interface listNearPlacesInterfaceController ()

@end

@implementation listNearPlacesInterfaceController

@synthesize tableView = _tableView;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    
    [_tableView setRowTypes:@[@"listNearPlaces", @"listNearPlaces", @"listNearPlaces", @"listNearPlaces", @"listNearPlaces", @"listNearPlaces", @"listNearPlaces", @"listNearPlaces"]];
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



