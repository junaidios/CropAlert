//
//  Item.h
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "BaseEntity.h"

@interface Item : BaseEntity

@property (strong, nonatomic) NSString * title;
@property (strong, nonatomic) NSString * image;
@property (strong, nonatomic) NSString * animation;
@property (strong, nonatomic) NSString * color_main_start;
@property (strong, nonatomic) NSString * color_main_end;
@property (strong, nonatomic) NSString * color_separator;
@property (strong, nonatomic) NSMutableArray * menuOneList;


-(id)initWithDict:(NSDictionary *) dict;

@end
