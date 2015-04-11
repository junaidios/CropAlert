//
//  UIImage+JS.h
//  GoPatoDrive
//
//  Created by JayD on 04/03/2015.
//  Copyright (c) 2015 Pikes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JS)


- (NSString *)base64String;

- (UIImage*)imageWithScaledToSize:(CGSize)newSize;

@end
