//
//  AddTagsIconesInterfaceController.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 23/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//


#import <UIKit/UIKit.h>

#import "AddTagsIconesInterfaceController.h"

#import "singleButtonTag.h"
#import "doubleButtonTag.h"
#import "tripleButtonTag.h"

@interface AddTagsIconesInterfaceController ()
@property (strong, nonatomic) IBOutlet WKInterfaceTable *listTagTableView;

@end

@implementation AddTagsIconesInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    NSString *listOfTags = @"Sport • Label • Tag • Labelzrl • Labelzrl • restaurantftest • Taeg • Labselzrl • Labelzrfdsl • restaurantftestsf";
    
     [self initTagTableViewWithTags:listOfTags];
}

-(void)initTagTableViewWithTags:(NSString *)tagsString {
    
    NSMutableArray * arrayOfTag = [[tagsString componentsSeparatedByString:@" • "] mutableCopy];
    
    
    NSMutableArray *saveRow = [[NSMutableArray alloc] init];
    
    while ([arrayOfTag count] >0) {
        [saveRow addObject:[self fillRowOfTagTable:arrayOfTag with:[arrayOfTag objectAtIndex:0]]];
        [arrayOfTag removeObjectsInArray:[saveRow lastObject]];
    }
    
    // NSLog(@"saveRow :%@", [saveRow description]);
    NSMutableArray *listTagsRow = [[NSMutableArray alloc] initWithCapacity:[saveRow count]];
    
    for (NSMutableArray *array in saveRow)
    {
        switch ([array count]) {
            case 1:
                [listTagsRow addObject:@"singleButtonTag"];
                break;
            case 2:
                [listTagsRow addObject:@"doubleButtonTag"];
                break;
            case 3:
                [listTagsRow addObject:@"tripleButtonTag"];
                break;
                
            default:
                break;
        }    }
    
    [_listTagTableView setRowTypes:listTagsRow];
    [self initTableTagWithTable:_listTagTableView and:saveRow];
}


-(void)initTableTagWithTable:(WKInterfaceTable *)tableView and:(NSMutableArray *)listTag
{
    NSLog(@"initTable");
    for (int i = 0; i < [tableView numberOfRows]; i++)
    {
        NSObject *row = [tableView rowControllerAtIndex:i];
        
        if ([row isKindOfClass:[singleButtonTag class]])
        {
            singleButtonTag *roww = (singleButtonTag *)row;
            
            roww.isTouch = YES;
            [roww.tagLabel setText:[[listTag objectAtIndex:i] objectAtIndex:0]];
        }
        else if ([row isKindOfClass:[doubleButtonTag class]])
        {
            doubleButtonTag *roww = (doubleButtonTag *)row;
            
            roww.isTouch1 = YES;
            roww.isTouch2 = YES;
            [roww.tagLabel_1 setText:[[listTag objectAtIndex:i] objectAtIndex:0]];
            [roww.tagLabel_2 setText:[[listTag objectAtIndex:i] objectAtIndex:1]];
        }
        else if ([row isKindOfClass:[tripleButtonTag class]])
        {
            tripleButtonTag *roww = (tripleButtonTag *)row;
            roww.isTouch1 = YES;
            roww.isTouch2 = YES;
            roww.isTouch3 = YES;

            [roww.tagLabel_1 setText:[[listTag objectAtIndex:i] objectAtIndex:0]];
            [roww.tagLabel_2 setText:[[listTag objectAtIndex:i] objectAtIndex:1]];
            [roww.tagLabel_3 setText:[[listTag objectAtIndex:i] objectAtIndex:2]];
        }
        
        //  NSLog(@"row :%@", [[row class] description]);
    }
}


- (CGFloat)widthOfString:(NSString *)string withFont:(UIFont *)font {
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
    return [[[NSAttributedString alloc] initWithString:string attributes:attributes] size].width;
}



-(NSMutableArray *)fillRowOfTagTable:(NSMutableArray *)tagsAndSize with:(NSString*)firstWord {
    
    float sizeMax = 95;
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    UIFont * font =[UIFont  systemFontOfSize:10];
    float sizeOfStr = 0;
    float saveSizes = 0;
    
    if ([self widthOfString:firstWord withFont:font] > sizeMax)
    {
        [array addObject:firstWord];
        return array;
    }
    
    for (NSString *str in tagsAndSize)
    {
        sizeOfStr  = [self widthOfString:str withFont:font];
        saveSizes += sizeOfStr;
        if (saveSizes > sizeMax)
            saveSizes -= sizeOfStr;
        else
        {
            if ([array count] < 3)
                [array addObject:str];
            else
            {
                NSLog(@"saveSize :%f pour %d", saveSizes, [array count]);

                return array;
            
            }
            
        }
        
    }
    NSLog(@"saveSize :%f pour %d", saveSizes, [array count]);
    return array;
}


- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)addPlacesButton {
}
@end



