//
//  LSIPerson.m
//  StarWarsSearch-Objc
//
//  Created by Vici Shaweddy on 1/30/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIPerson.h"

@implementation LSIPerson

- (instancetype)initWithName:(NSString *)name
                   birthYear:(NSString *)birthYear
                      height:(NSString *)height
                    eyeColor:(NSString *)eyeColor; {

    if (self = [super init]) {
        // Always use instance variable (_variableName) for
        // to prevent side effects from using properties before
        // the object is fully initialized
        _name = name;
        _birthYear = birthYear;
        _height = height;
        _eyeColor = eyeColor;
    }
    return self;
}


- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    NSString *name = dictionary[@"name"];
    NSString *birthYear = dictionary[@"birth_year"];
    NSString *height = dictionary[@"height"];
    NSString *eyeColor = dictionary[@"eye_color"];
    
    return [self initWithName:name birthYear:birthYear height:height eyeColor:eyeColor];
}

@end
