//
//  singleButtonTag.h
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 23/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>


@interface singleButtonTag : NSObject
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *tagLabel;
@property (strong, nonatomic) IBOutlet WKInterfaceGroup *groupTag;
@property (nonatomic) BOOL isTouch;
@end
