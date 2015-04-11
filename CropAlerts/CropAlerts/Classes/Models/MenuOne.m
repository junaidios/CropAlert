//
//  MenuOne.m
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "MenuOne.h"


@implementation MenuOne


-(id)initWithDict:(NSDictionary *) dicElement
{
    self = [super init];
    if (self) {
        
        
        [self setTitle:dicElement[KEY_TITLE_MENU_ONE]];
        self.menuTwoList = @[].mutableCopy;
       
        for (NSDictionary *dict in dicElement[KEY_MENU_TWO]) {
        
            [self.menuTwoList addObject:[[MenuTwo alloc] initWithDictionary:dict]];
        
        }
        
        
    }
    return self;
}


@end
