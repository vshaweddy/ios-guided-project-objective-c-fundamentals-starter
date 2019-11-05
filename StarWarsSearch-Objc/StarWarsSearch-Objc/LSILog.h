//
//  LSILog.h
//  iOS6-Quakes-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Import this header any place you want to have a clean log output like
// print() in Swift
// Based on: https://stackoverflow.com/a/1354736/276626

#define USECUSTOMLOGS 1     // 0 = Off, 1 = On
#if USECUSTOMLOGS
#define NSLog LSILog
#endif

void LSILog(NSString *format, ...) {
    va_list args;
    va_start(args, format);
    NSString *stringWithNewline = [format stringByAppendingString:@"\n"];
    NSString *formattedString = [[NSString alloc] initWithFormat: stringWithNewline
                                                       arguments: args];
    va_end(args);
    [[NSFileHandle fileHandleWithStandardOutput]
     writeData: [formattedString dataUsingEncoding: NSUTF8StringEncoding]];
}
