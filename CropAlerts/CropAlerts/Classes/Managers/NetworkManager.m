//
//  NetworkManger.m
//  ProApp
//
//  Created by Coeus on 30/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//


#import "NetworkManager.h"
#import "AFNetworking.h"
#import "Constants.h"

//#import "SVProgressHUD.h"

@implementation NetworkManager

+ (NSError *)createErrorMessageForObject:(id)responseObject
{
    NSError *error = [NSError errorWithDomain:@"Failed!"
                                         code:100
                                     userInfo:@{
                                                NSLocalizedDescriptionKey:responseObject[@"message"]
                                                }];
    NSLog(@"Failed with Response: %@", responseObject);
    return error;
}


+(void) postURI:(NSString *) uri
     parameters:(NSDictionary *) params
        success:(loadSuccess) success
        failure:(loadFailure) failure{
    
//    if (![PATO_POST_MESSAGE isEqualToString:uri]) {
//        [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeClear];
//    }
    
    NSURL *baseURL = [[NSURL alloc] initWithString:BASE_URL];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    
    [manager POST:uri parameters:params success:^(NSURLSessionDataTask *task, id responseObject)
     {
//         [SVProgressHUD dismiss];
         
         NSLog(@"responseObject: %@", responseObject);
         
//         BOOL _successCall = [[responseObject valueForKey:@"success"] boolValue] ;
//         
//         if (_successCall){
             success(responseObject);
//         }
//         else
//         {
//             NSError *error = [self createErrorMessageForObject:responseObject];
//             failure(error);
//         }
         
     }
          failure:^(NSURLSessionDataTask *task, NSError *error)
     {
//         [SVProgressHUD dismiss];
         
         NSLog(@"Failure: %@", error.localizedDescription);
         failure(error);
     }];
}

+(void)  getURI:(NSString *) uri
     parameters:(NSDictionary *) params
        success:(loadSuccess) success
        failure:(loadFailure) failure{
    
//    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeClear];
    
    NSURL *baseURL = [[NSURL alloc] initWithString:BASE_URL];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    
    [manager GET:uri parameters:params success:^(NSURLSessionDataTask *task, id responseObject)
     {
//         [SVProgressHUD dismiss];
         
         NSLog(@"responseObject: %@", responseObject);
         
//         BOOL _successCall = [[responseObject valueForKey:@"success"] boolValue] ;
//         
//         if (_successCall){
             success(responseObject);
//         }
//         else
//         {
//             NSError *error = [self createErrorMessageForObject:responseObject];
//             failure(error);
//         }
         
     }
         failure:^(NSURLSessionDataTask *task, NSError *error)
     {
//         [SVProgressHUD dismiss];
         
         NSLog(@"Failure: %@", error.localizedDescription);
         failure(error);
     }];
}

+(void)  putURI:(NSString *) uri
     parameters:(NSDictionary *) params
        success:(loadSuccess) success
        failure:(loadFailure) failure{
    
//    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeClear];
    
    NSURL *baseURL = [[NSURL alloc] initWithString:BASE_URL];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    
    [manager PUT:uri parameters:params success:^(NSURLSessionDataTask *task, id responseObject)
     {
//         [SVProgressHUD dismiss];
         
         NSLog(@"responseObject: %@", responseObject);
         
//         BOOL _successCall = [[responseObject valueForKey:@"success"] boolValue] ;
//         
//         if (_successCall){
             success(responseObject);
//         }
//         else
//         {
//             NSError *error = [self createErrorMessageForObject:responseObject];
//             failure(error);
//         }
         
     }
         failure:^(NSURLSessionDataTask *task, NSError *error)
     {
//         [SVProgressHUD dismiss];
         NSLog(@"Failure: %@", error.localizedDescription);
         failure(error);
     }];
}

@end