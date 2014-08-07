//
//  ViewController.m
//  NSUserDeafultsDemo
//
//  Created by Matthew Perejda on 8/6/14.
//  Copyright (c) 2014 Matthew Perejda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	// Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    int userId = [defaults integerForKey:@"userId"];
    NSString *userIdString = [NSString stringWithFormat:@"%i",userId];
    
    int latestOrderId = [defaults integerForKey:@"latestOrderId"];
    NSString *latestOrderIdString = [NSString stringWithFormat:@"%i",latestOrderId];
    
    
    // Update the UI elements with the saved data
    self.userIdTextField.text = userIdString;
    self.latestOrderIdTextField.text = latestOrderIdString;
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {

    // Hide the keyboard
    [self.userIdTextField resignFirstResponder];
    [self.latestOrderIdTextField resignFirstResponder];
    
    // Create strings and integer to store the text info
    int userId = [[self.userIdTextField text] integerValue];
    int latestOrderId = [[self.latestOrderIdTextField text] integerValue];
    
    
    // Store the data
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:userId forKey:@"userId"];
    [defaults setInteger:latestOrderId forKey:@"latestOrderId"];
    
    [defaults synchronize];
    
    NSLog(@"Data saved. User id:%d and latestOrderId: %d",userId, latestOrderId);
}
@end
