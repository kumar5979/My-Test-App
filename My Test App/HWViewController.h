//
//  HWViewController.h
//  My Test App
//
//  Created by kumar veerappan on 2/20/14.
//  Copyright (c) 2014 kumar veerappan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HWErrorHandler.h"

@interface HWViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *myButton;


- (IBAction)showAlert:(id)sender;

- (IBAction)fakeFatalError:(id)sender;

- (IBAction)fakeNonFatalError:(id)sender;


@end
