//
//  singleButtonTag.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 23/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "singleButtonTag.h"

@implementation singleButtonTag

@synthesize isTouch = _isTouch;
@synthesize groupTag = _groupTag;


- (IBAction)touchTag {
    if (_isTouch)
        [_groupTag setBackgroundColor:[UIColor magentaColor]];
    else
        [_groupTag setBackgroundColor:[UIColor colorWithRed:26.0f/255.0f green:26.0f/255.0f blue:26.0f/255.0f alpha:1.0f]];
    
    _isTouch = !_isTouch;

}
@end
