//
//  PagedInterfaceController.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 20/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "PagedInterfaceController.h"
#import <UIKit/UIKit.h>

@interface PagedInterfaceController ()
@property (nonatomic, strong) id Context;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *image;

@end

@implementation PagedInterfaceController

@synthesize labelPaged = _labelPaged;
- (IBAction)touchButton {
    [self presentControllerWithName:@"Detail" context:@"[indexPath][row]"];
}



- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    _Context = context;
    
  //  [self setTitle:@"< Retour menu"];
   // NSLog(@"self %@", [context description]);
    [self.labelPaged setText:_Context];
       // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
//.. pop DetailView   [self popController]
//.. push to DetailView    [self presentControllerWithName:@"Name" context:@"[indexPath][row]"]
}

-(void)didAppear {
     NSLog(@"Dans la page :%@", _Context);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



