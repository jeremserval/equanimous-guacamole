//
//  doubleButtonTag.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 23/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "doubleButtonTag.h"

@implementation doubleButtonTag

@synthesize groupeTag1 = _groupeTag1;
@synthesize groupeTag2 = _groupeTag2;


- (IBAction)touchFirstTag {
    if (_isTouch1)
        [_groupeTag1 setBackgroundColor:[UIColor blueColor]];
    else
        [_groupeTag1 setBackgroundColor:[UIColor colorWithRed:26.0f/255.0f green:26.0f/255.0f blue:26.0f/255.0f alpha:1.0f]];
    _isTouch1 = !_isTouch1;
}


- (IBAction)touchSecondTag {
    if (_isTouch2)
        [_groupeTag2 setBackgroundColor:[UIColor redColor]];
    else
        [_groupeTag2 setBackgroundColor:[UIColor colorWithRed:26.0f/255.0f green:26.0f/255.0f blue:26.0f/255.0f alpha:1.0f]];
    _isTouch2 = !_isTouch2;

}

@end
