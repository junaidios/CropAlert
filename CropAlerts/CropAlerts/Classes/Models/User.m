//
//  User.m
//  CropAlerts
//
//  Created by JayD on 11/04/2015.
//  Copyright (c) 2015 NASA. All rights reserved.
//

#import "User.h"

@implementation User


+(void) test{

    PFObject *testObj = [PFObject objectWithClassName:@"User"];
    testObj[@"userId"] = @1032;
    testObj[@"userName"] = @"M Junaid";
    testObj[@"Phone"] = @"03338471106";
    [testObj saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            // The object has been saved.
        } else {
            // There was a problem, check error.description
        }
    }];
}


+(void) testing{


    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        
        NSLog(@"%@", objects);
        
    }];
}

@end
