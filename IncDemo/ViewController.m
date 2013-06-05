//
//  ViewController.m
//  IncDemo
//
//  Created by Bryan Kinney on 6/5/13.
//  Copyright (c) 2013 Trane Controls. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   self.Label.text = [NSString stringWithFormat:@"0"];
   [self.Button setTitle:@"Increment" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonPressed
{
   int increment = 0;
   
   if( self.Segment.selectedSegmentIndex == 0 )
   {
      increment = 1;
   }
   else if( self.Segment.selectedSegmentIndex == 1 )
   {
      increment = -1;
   }
   
   self.Label.text = [NSString stringWithFormat:@"%d", [self.Label.text intValue] + increment];
}

- (IBAction)SegmentChanged
{
   if( self.Segment.selectedSegmentIndex == 0 )
   {
      [self.Button setTitle:@"Increment" forState:UIControlStateNormal];
   }
   else if( self.Segment.selectedSegmentIndex == 1 )
   {
      [self.Button setTitle:@"Decrement" forState:UIControlStateNormal];
   }
}
@end
