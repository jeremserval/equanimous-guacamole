//
//  doubleButtonTag.h
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 23/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>


@interface doubleButtonTag : NSObject
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *tagLabel_2;
@property (strong, nonatomic) IBOutlet WKInterfaceGroup *groupeTag2;
@property (nonatomic) BOOL isTouch2;

@property (strong, nonatomic) IBOutlet WKInterfaceGroup *groupeTag1;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *tagLabel_1;
@property (nonatomic) BOOL isTouch1;
@end
