//
//  DetailViewController.h
//  testGitBranchWithXcode
//
//  Created by Jeremie serval on 21/10/2015.
//  Copyright © 2015 Jeremie serval. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

