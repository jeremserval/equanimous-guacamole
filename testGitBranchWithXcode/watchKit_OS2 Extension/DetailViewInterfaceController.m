//
//  DetailViewInterfaceController.m
//  Watchkit_ObjC
//
//  Created by Jeremie serval on 20/10/2015.
//  Copyright © 2015 Olga Dalton. All rights reserved.
//

#import "DetailViewInterfaceController.h"
#import <UIKit/UIKit.h>

#import "singleLabelRow.h"
#import "doubleLabelRow.h"
#import "tripleLabelRow.h"

@interface DetailViewInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceGroup *groupMain;


@end

@implementation DetailViewInterfaceController


@synthesize tagTableView = _tagTableView;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    
    
    NSString *tagsOfPlace = @"Sport • Label • Tag • Labelzrl • Labelzrl • restaurantftest";
    
    [self initTagTableViewWithTags:tagsOfPlace];
}


- (CGFloat)widthOfString:(NSString *)string withFont:(UIFont *)font {
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
    return [[[NSAttributedString alloc] initWithString:string attributes:attributes] size].width;
}



-(NSMutableArray *)fillRowOfTagTable:(NSMutableArray *)tagsAndSize with:(NSString*)firstWord {
    
    float sizeMax = 111.5f;
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
                return array;
        
        }
        
    }
    return array;
}

- (void)initTagTableViewWithTags:(NSString *)tagsString {
    NSMutableArray * arrayOfTag = [[tagsString componentsSeparatedByString:@" • "] mutableCopy];
    
    //UIFont * font =[UIFont systemFontOfSize:16];
    
    
    //NSMutableDictionary *tagAndSize = [[NSMutableDictionary alloc] initWithCapacity:[arrayOfTag count]];

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
                [listTagsRow addObject:@"singleLabelRow"];
                break;
            case 2:
                [listTagsRow addObject:@"doubleLabelRow"];
                break;
            case 3:
                [listTagsRow addObject:@"tripleLabelRow"];
                break;
                
            default:
                break;
        }    }
    
    [_tagTableView setRowTypes:listTagsRow];
    [self initTableTagWithTable:_tagTableView and:saveRow];
  
 //   NSLog(@"tagandsize :%@", [tagAndSize description]);
    
}

-(void)initTableTagWithTable:(WKInterfaceTable *)tableView and:(NSMutableArray *)listTag
{
    for (int i = 0; i < [tableView numberOfRows]; i++)
    {
        NSObject *row = [tableView rowControllerAtIndex:i];
        
        if ([row isKindOfClass:[singleLabelRow class]])
        {
            singleLabelRow *roww = (singleLabelRow *)row;
        
            [roww.tagLabel setText:[[listTag objectAtIndex:i] objectAtIndex:0]];
        }
        else if ([row isKindOfClass:[doubleLabelRow class]])
        {
            doubleLabelRow *roww = (doubleLabelRow *)row;
            
            [roww.tagLabel_1 setText:[[listTag objectAtIndex:i] objectAtIndex:0]];
            [roww.tagLabel_2 setText:[[listTag objectAtIndex:i] objectAtIndex:1]];
        }
        else if ([row isKindOfClass:[tripleLabelRow class]])
        {
            tripleLabelRow *roww = (tripleLabelRow *)row;
            
            [roww.tagLabel_1 setText:[[listTag objectAtIndex:i] objectAtIndex:0]];
            [roww.tagLabel_2 setText:[[listTag objectAtIndex:i] objectAtIndex:1]];
            [roww.tagLabel_3 setText:[[listTag objectAtIndex:i] objectAtIndex:2]];
       }
        
      //  NSLog(@"row :%@", [[row class] description]);
    }
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



