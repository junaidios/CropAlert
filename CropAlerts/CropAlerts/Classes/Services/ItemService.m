//
//  Item.m
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "ItemService.h"

@implementation ItemService


+(void) laodAllItemForListWithSuccess:(serviceSuccess) success
                              failure:(serviceFailure) failure{
    
    
    
    
    //  Request URL:
    //  http://54.149.81.28/api/v1/patos/176/pato_orders/84/reject_order.json?authentication_token=q7Pp9rU--TqpyHCLy3Lv
    [NetworkManager getURI:URI_MAIN_MENU_LISTING parameters:nil
                   success:^(id data) {
                       
                       NSMutableArray * menuList = @[].mutableCopy;
                       
                       for (NSDictionary * dict in data) {
                           
                           [menuList addObject:[[Item alloc] initWithDict:dict]];
                       }
                       
                       success(menuList);
                       
                   } failure:^(NSError *error) {
                       
                       failure(error);
                       
                   }];
}
@end
