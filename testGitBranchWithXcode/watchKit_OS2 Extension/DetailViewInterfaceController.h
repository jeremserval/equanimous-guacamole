//
//  DetailViewInterfaceController.h
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 20/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface DetailViewInterfaceController : WKInterfaceController 
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceTable *tagTableView;

@end
