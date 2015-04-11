
//
//  Item.m
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "Item.h"
#import "MenuOne.h"

@implementation Item


-(id)initWithDict:(NSDictionary *) dicElement
{
    self = [super init];
    if (self) {
        
        
        [self setTitle:dicElement[KEY_TITLE]];
        [self setImage:dicElement[KEY_IMAGE]];
        [self setAnimation:dicElement[KEY_ANIMATION]];
        [self setColor_main_start:dicElement[KEY_COLOR_MAIN_START]];
        [self setColor_main_end:dicElement[KEY_COLOR_MAIN_END]];
        [self setColor_separator:dicElement[KEY_COLOR_SEPARATOR]];
        
        self.menuOneList = @[].mutableCopy;
        
        for (NSDictionary *dict in dicElement[KEY_MENU_ONE]) {
            
            [self.menuOneList addObject:[[MenuOne alloc]initWithDict:dict]];
            
        }
        
        
    }
    return self;
}

@end
