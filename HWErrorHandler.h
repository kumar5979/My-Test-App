//
//  HWErrorHandler.h
//  My Test App
//
//  Created by kumar veerappan on 2/21/14.
//  Copyright (c) 2014 kumar veerappan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HWErrorHandler : NSObject

+(void)handleError:(NSError *)error fatal:(BOOL)fatalError;

@end
