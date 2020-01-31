//
//  LSIPersonController.h
//  StarWarsSearch-Objc
//
//  Created by Vici Shaweddy on 1/30/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPersonController : NSObject

// public properties
// public instance variables
// public methods

- (void)searchForPeopleWithSearchTerm:(NSString *)searchTerm
                           completion:(void (^)(NSArray *people, NSError *error))completion;


@end

