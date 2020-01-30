//
//  LSIPersonTests.m
//  StarWarsSearch-ObjcTests
//
//  Created by Paul Solt on 11/5/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSIFileHelper.h"

@interface LSIPersonTests : XCTestCase

@end

@implementation LSIPersonTests

- (void)testParseJSON {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSData *data = loadFile(@"Person.json", bundle);
    
    XCTAssertNotNil(data);
    
    NSError *error = nil;
    // Bitmask = flags in C/Objective-C
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    if(error) {
        XCTFail(@"Error: %@", error);
    }
    
    NSLog(@"PERSON: %@", json);
}

@end
