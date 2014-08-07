//
//  ViewController.h
//  NSUserDeafultsDemo
//
//  Created by Matthew Perejda on 8/6/14.
//  Copyright (c) 2014 Matthew Perejda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *latestOrderIdTextField;
@property (weak, nonatomic) IBOutlet UITextField *userIdTextField;

@end
