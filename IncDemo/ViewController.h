//
//  ViewController.h
//  IncDemo
//
//  Created by Bryan Kinney on 6/5/13.
//  Copyright (c) 2013 Trane Controls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *Label;

@property (strong, nonatomic) IBOutlet UIButton *Button;
- (IBAction)ButtonPressed;

@property (strong, nonatomic) IBOutlet UISegmentedControl *Segment;
- (IBAction)SegmentChanged;
@end
