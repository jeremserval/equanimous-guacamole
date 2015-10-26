//
//  listePlacesInterfaceController.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 22/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "listePlacesInterfaceController.h"

@interface listePlacesInterfaceController ()
@property (strong, nonatomic) IBOutlet WKInterfaceTable *tableView;

@end

@implementation listePlacesInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    
    [_tableView setRowTypes:@[@"listPlaces", @"listPlaces", @"listPlaces", @"listPlaces", @"listPlaces"]];
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



