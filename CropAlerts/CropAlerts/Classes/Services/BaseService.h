//
//  BaseService.h
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkManager.h"
#import "Constants.h"
#import "Item.h"

typedef void (^serviceSuccess)(id data);
typedef void (^serviceFailure)(NSError *error);

@interface BaseService : NSObject

@end
