//
//  HWViewController.m
//  My Test App
//
//  Created by kumar veerappan on 2/20/14.
//  Copyright (c) 2014 kumar veerappan. All rights reserved.
//

#import "HWViewController.h"

@interface HWViewController ()

@end

@implementation HWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    UIAlertView *msgView = [[UIAlertView alloc] initWithTitle: @"Thanks" message:@"Hello Dear !!" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    
    [msgView show];
}

@end
