//
//  UIView+Borders.m
//
//  Created by Junaid Muhammad.
//  Copyright (c) 2015 Junaid Muhammad. All rights reserved.
//

#import "UIView+Borders.h"
#import "UIColor+JS.h"


@implementation UIView(Borders)


-(void) addBorderInCardsStyle{

    self.layer.masksToBounds = NO;
    self.layer.cornerRadius=5.0f;
    self.layer.shadowOffset = CGSizeMake(0, 2);
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowRadius = 2;
    self.layer.shadowOpacity = 0.3;
}

-(void)addBorderInGoPateNavigationStyle{

    
    self.layer.masksToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(0, 1);
    self.layer.shadowColor = [[UIColor lightGrayColor] CGColor];
    self.layer.shadowOpacity = 0.50;
    self.layer.shadowRadius = 1;
}


-(void)addBorderOfOrangeColorWithRadius:(CGFloat)radius{
    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
    self.layer.borderColor = [[UIColor orangeColor] CGColor];
    self.layer.borderWidth = 1.0;
}

-(void)addBorderWithLightOrangeColor{
    
    self.layer.masksToBounds = YES;
    self.layer.borderColor = [[UIColor orangeColor] CGColor];
    self.layer.borderWidth = 1.0;
}

-(void)addBorderWithColor:(UIColor *) color andRadius:(CGFloat)radius{
    
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = radius;
    self.layer.borderColor = [color CGColor];
    self.layer.borderWidth = 1.0;
}


-(void)addTopBorderGoPatoWithRadius:(CGFloat)radius{

    self.layer.masksToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(0, -1);
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowOpacity = 0.30;
    self.layer.shadowRadius = 1.0;
}


-(void)addBorderGoPatoWithRadius:(CGFloat)radius{
    
    CALayer *layer = self.layer;
    
    layer.masksToBounds = NO;
    layer.cornerRadius = radius;
    layer.shadowOpacity = 0.50;
    layer.shadowColor = [[UIColor blackColor] CGColor];
    layer.shadowOffset = CGSizeMake(0,1);
    layer.shadowRadius = 1;
}

-(void)addBorderGoPatoWithSize:(CGFloat)size color:(UIColor*)color andRadius:(CGFloat) radius
{
    
    CALayer *layer = self.layer;
    
    layer.masksToBounds = NO;
    layer.cornerRadius = radius;
    layer.borderWidth = size;
    layer.borderColor = color.CGColor;
    layer.shadowOpacity = 0.5;
    layer.shadowColor = [[UIColor blackColor] CGColor];
    layer.shadowOffset = CGSizeMake(0,1);
    layer.shadowRadius = 1;
}

-(void) addOnlySubView:(UIView *)view
{
    for (UIView *_view in self.subviews) {
        [_view removeFromSuperview];
    }

    [self.superview setHidden:NO];
    [self addSubview:view];
}

@end
