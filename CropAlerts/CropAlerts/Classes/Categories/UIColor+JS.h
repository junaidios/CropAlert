//
//  UIColor+JS.h
//  goPato
//
//  Created by Pikes on 16/02/2015.
//  Copyright (c) 2015 PikesSoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface UIColor (JS)


// PATO VERSION ( DRIVE )

+ (UIColor *) gpDarkBgColor;


// GENERAL VERSION (USER)

+ (UIColor *) gplightGrayBgColor;

+ (UIColor *) gplightGrayInactiveBtnColor;

+ (UIColor *) gpOrangeColor;

+ (UIColor *) gpOrangeColorWithHalfAlpha;

+ (UIColor *) gpOrangeColorWithAlpha:(CGFloat ) alpha;

+ (UIColor *) gpMessageOrangeColor;

+ (UIColor *) gpMapCircleStroke;


@end
