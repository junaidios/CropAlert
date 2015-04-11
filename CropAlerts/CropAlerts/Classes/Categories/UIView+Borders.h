//
//  UIView+Borders.h
//
//  Created by Junaid Muhammad.
//  Copyright (c) 2015 Junaid Muhammad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Borders)

-(void) addBorderInCardsStyle;

-(void)addBorderInGoPateNavigationStyle;

-(void)addBorderOfOrangeColorWithRadius:(CGFloat)radius;

-(void)addBorderWithLightOrangeColor;

-(void)addBorderWithColor:(UIColor *) color andRadius:(CGFloat)radius;

-(void)addTopBorderGoPatoWithRadius:(CGFloat)radius;

-(void)addBorderGoPatoWithRadius:(CGFloat)radius;

-(void)addBorderGoPatoWithSize:(CGFloat)size color:(UIColor*)color andRadius:(CGFloat) radius;

-(void) addOnlySubView:(UIView *)view;
@end
