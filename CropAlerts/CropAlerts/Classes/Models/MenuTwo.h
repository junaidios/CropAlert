//
//  MenuTwo.h
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "BaseEntity.h"


@interface MenuTwo : BaseEntity



@property (strong, nonatomic) NSString* title;
@property (strong, nonatomic) NSString* file;
@property (strong, nonatomic) NSString* version;

-(id)initWithDictionary:(NSDictionary*) dict;

@end
