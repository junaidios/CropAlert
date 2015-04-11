//
//  Item.h
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "BaseService.h"


@interface ItemService : BaseService

+(void) laodAllItemForListWithSuccess:(serviceSuccess) success
                              failure:(serviceFailure) failure;

@end
