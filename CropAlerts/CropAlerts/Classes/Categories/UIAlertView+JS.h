//
//  UIAlertView+JS.h
//  myCategories
//
//  Created by Junaid Muhammad on 10/24/13.
//  Copyright (c) 2013 Junaid Muhammad. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^UIAlertViewHandler)(UIAlertView *alertView, NSInteger buttonIndex);

@interface UIAlertView (JS)<UIAlertViewDelegate>

+ (void) showAlertMessage:(NSString *) message;

- (void) showWithBlock:(UIAlertViewHandler)handler;

//+ (void)alertPlayAudioFileWithName:(NSString *)name type:(NSString *)type;

@end
