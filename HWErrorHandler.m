//
//  HWErrorHandler.m
//  My Test App
//
//  Created by kumar veerappan on 2/21/14.
//  Copyright (c) 2014 kumar veerappan. All rights reserved.
//

#import "HWErrorHandler.h"

@implementation HWErrorHandler

+(void)handleError:(NSError *)error fatal:(BOOL)fatalError
{

    NSString *localizedCancelTitle = NSLocalizedString(@"Dismiss", nil);
    if (fatalError) {
        localizedCancelTitle = NSLocalizedString(@"Shut Down", nil);
        
        
       // HWErrorHandler *delegate = [[HWErrorHandler alloc] initWithError:error fatal:fatalError];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[error localizedDescription]
                                                        message:[error localizedFailureReason]
                                                        delegate:nil
                                                        cancelButtonTitle:localizedCancelTitle
                                              otherButtonTitles:nil];
        [alert show];
        NSLog(@ " Unhandled error:\n %@ ",error,[error userInfo]);
    
    }
     
}

@end
