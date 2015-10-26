//
//  tripleButtonTag.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 23/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "tripleButtonTag.h"

@implementation tripleButtonTag

@synthesize groupeTag1 = _groupeTag1;
@synthesize isTouch1 = _isTouch1;

@synthesize groupeTag2 = _groupeTag2;
@synthesize isTouch2 = _isTouch2;

@synthesize groupeTag3 = _groupeTag3;
@synthesize isTouch3 = _isTouch3;


- (IBAction)touchFirstTag {
    if (_isTouch1)
        [_groupeTag1 setBackgroundColor:[UIColor cyanColor]];
    else
        [_groupeTag1 setBackgroundColor:[UIColor colorWithRed:26.0f/255.0f green:26.0f/255.0f blue:26.0f/255.0f alpha:1.0f]];
    _isTouch1 = !_isTouch1;

}

- (IBAction)touchSecondTag {
    if (_isTouch2)
        [_groupeTag2 setBackgroundColor:[UIColor yellowColor]];
    else
        [_groupeTag2 setBackgroundColor:[UIColor colorWithRed:26.0f/255.0f green:26.0f/255.0f blue:26.0f/255.0f alpha:1.0f]];
    _isTouch2 = !_isTouch2;
}

- (IBAction)touchThirdTag {
    if (_isTouch3)
        [_groupeTag3 setBackgroundColor:[UIColor orangeColor]];
    else
        [_groupeTag3 setBackgroundColor:[UIColor colorWithRed:26.0f/255.0f green:26.0f/255.0f blue:26.0f/255.0f alpha:1.0f]];
    _isTouch3 = !_isTouch3;
}

@end
