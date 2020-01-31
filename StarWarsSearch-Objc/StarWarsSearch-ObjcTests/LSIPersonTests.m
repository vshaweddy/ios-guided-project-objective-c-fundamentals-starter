//
//  LSIPersonTests.m
//  StarWarsSearch-ObjcTests
//
//  Created by Paul Solt on 11/5/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LSIFileHelper.h"
#import "LSIPerson.h"

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
        // @"Hello" = Objective-C String
        // "World" = C string (C programming language)
        XCTFail(@"Error: %@", error);
    }
    
    NSLog(@"PERSON: %@", json);
    
    // JSON -> LSIPerson
    /*
     "name": "Luke Skywalker",
     "height": "172",
     "mass": "77",
     "hair_color": "blond",
     "skin_color": "fair",
     "eye_color": "blue",
     "birth_year": "19BBY",
     */
    
    LSIPerson *luke = [[LSIPerson alloc] initWithDictionary:json];
    
    //XCTAssertEqual() is for int, double, float, and primitive data types
    // XCTAssertEqualObjects() for NSString, and other objects
    
    NSString *height = @"172";
    
    XCTAssertEqualObjects(@"Luke Skywalker", luke.name);
    XCTAssertEqualObjects(@"19BBY", luke.birthYear);
    XCTAssertEqualObjects(height, luke.height);
    XCTAssertEqualObjects(@"blue", luke.eyeColor);
}

@end
