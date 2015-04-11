//
//  UIAlertView+JS.m
//  myCategories
//
//  Created by Junaid Muhammad on 10/24/13.
//  Copyright (c) 2013 Junaid Muhammad. All rights reserved.
//

#import "UIAlertView+JS.h"
#import <objc/runtime.h>

static NSString *handlerRunTimeAccosiationKey = @"alertViewBlocksDelegate";

@implementation UIAlertView (JS)

+ (void) showAlertMessage:(NSString *) message{
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"GoPato!"
                                                     message:message
                                                    delegate:nil
                                           cancelButtonTitle:@"Ok"
                                           otherButtonTitles: nil];
    [alert show];
}


- (void)showWithBlock:(UIAlertViewHandler)handler {
    
    objc_setAssociatedObject(self, (__bridge  const void *)(handlerRunTimeAccosiationKey), handler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self setDelegate:self];
    
    [self show];
    
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    UIAlertViewHandler completionHandler = objc_getAssociatedObject(self, (__bridge  const void *)(handlerRunTimeAccosiationKey));
    
    if (completionHandler != nil) {
        
        completionHandler(alertView, buttonIndex);
    }
}



//+ (void)alertPlayAudioFileWithName:(NSString *)name type:(NSString *)type{
//
//    SystemSoundID mySSID;
//    
//    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:type];
//    
//    CFURLRef urlPath = (__bridge CFURLRef)[NSURL fileURLWithPath: path];
//    
//    AudioServicesCreateSystemSoundID(urlPath, &mySSID);
//    
//    AudioServicesPlaySystemSound(mySSID);
//    
//}

@end
