//
//  MenuTwo.m
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "MenuTwo.h"

@implementation MenuTwo

-(id)initWithDictionary:(NSDictionary*) dict
{
    self = [super init];
    if (self) {
        
        
        [self setTitle:dict[KEY_TITLE_MENU_TWO]];
        [self setFile:dict[KEY_FILE]];
        [self setVersion:dict[KEY_VERSION]];
    }
    return self;
    
}

@end
