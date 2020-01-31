//
//  LSIPersonTableViewCell.m
//  Star Wars Search ObjC
//
//  Created by Spencer Curtis on 10/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSIPersonTableViewCell.h"
#import "LSIPerson.h"

@implementation LSIPersonTableViewCell

- (void)setPerson:(LSIPerson *)person {
    _person = person;
    
    [self updateViews];
}
 
- (void)updateViews {
    if (!self.person) { return; }
    
    // Update the UI
    self.nameLabel.text = self.person.name;
    self.birthYearLabel.text = self.person.birthYear;
    self.heightLabel.text = [NSString stringWithFormat:@"%@", self.person.height];
    self.eyeColorLabel.text = [NSString stringWithFormat:@"%@", [self.person.eyeColor capitalizedString]];
}


@end
