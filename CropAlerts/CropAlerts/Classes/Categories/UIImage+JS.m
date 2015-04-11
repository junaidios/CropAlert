//
//  UIImage+JS.m
//  GoPatoDrive
//
//  Created by JayD on 04/03/2015.
//  Copyright (c) 2015 Pikes. All rights reserved.
//

#import "UIImage+JS.h"

@implementation UIImage (JS)


- (NSString *)base64String
{

    NSData * data = [UIImagePNGRepresentation(self) base64EncodedDataWithOptions:NSDataBase64Encoding64CharacterLineLength];
    
    return [NSString stringWithUTF8String:[data bytes]];
}

- (UIImage*)imageWithScaledToSize:(CGSize)updatedSize;
{
    
    UIGraphicsBeginImageContext(updatedSize);
    [self drawInRect:CGRectMake(0,0,updatedSize.width,updatedSize.height)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}


@end
