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



- (IBAction)fakeNonFatalError:(id)sender {
    
    NSString *description = @"Connection Error";
    NSString *failureReason = @"Can't seem to get a connection";
    NSArray *recoveryOptions = @[@"Retry"];
    NSString *recoverySuggestion = @"Check your WiFi settings and retry";
    NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:@[description,failureReason,recoveryOptions,recoverySuggestion,self] forKeys:@[NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey,NSLocalizedRecoverySuggestionErrorKey,NSLocalizedRecoverySuggestionErrorKey,NSRecoveryAttempterErrorKey]];
    
    NSError *error = [[NSError alloc] initWithDomain:@"Kumar First Error Handler program" code:42
                                            userInfo:userInfo];
    
    [HWErrorHandler handleError:error fatal:YES];
    
}

-(BOOL)attemptRecoveryFromError:(NSError *)error optionIndex:(NSUInteger)recoveryOptionIndex
{
    return NO;
}

-(IBAction)fakeFatalError:(id)sender
{
    NSString *description = @"Data Error";
    NSString *failureReason = @"Data is Corrupt.The app must shut down";
    NSString *recoverySuggestion = @"Contact support!";
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:@[description,failureReason,recoverySuggestion] forKey:@[NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey,NSLocalizedRecoveryOptionsErrorKey]];
    
    NSError *error = [[NSError alloc] initWithDomain:@"Kumar Fatal Error Handler program" code:22 userInfo:userInfo];
    [HWErrorHandler handleError:error fatal:YES];
}
@end
