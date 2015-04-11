//
//  MenuOne.h
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "BaseEntity.h"
#import "MenuTwo.h"

@interface MenuOne : BaseEntity

@property (strong, nonatomic) NSString * title;
@property (strong, nonatomic) NSMutableArray * menuTwoList;

-(id)initWithDict:(NSDictionary *) dict;

@end
