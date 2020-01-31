//
//  LSIPerson.h
//  StarWarsSearch-Objc
//
//  Created by Vici Shaweddy on 1/30/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Public interface
@interface LSIPerson : NSObject

// name, birthyear, height, eye color'
@property NSString *name;
@property NSString *birthYear;
@property NSString *height;
@property NSString *eyeColor;

- (instancetype)initWithName:(NSString *)name
                   birthYear:(NSString *)birthYear
                      height:(NSString *)height
                    eyeColor:(NSString *)eyeColor;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

