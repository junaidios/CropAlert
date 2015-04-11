//
//  UIColor+JS.m
//  goPato
//
//  Created by Pikes on 16/02/2015.
//  Copyright (c) 2015 PikesSoft. All rights reserved.
//

#import "UIColor+JS.h"

@implementation UIColor(JS)


// PATO VERSION ( DRIVE )

+ (UIColor *) gpDarkBgColor{
    return [UIColor colorWithRed:0.14 green:0.13 blue:0.13 alpha:1.0];
}

// GENERAL VERSION (USER)

+ (UIColor *) gplightGrayBgColor{
    
    return [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.0];
}

+ (UIColor *) gplightGrayInactiveBtnColor{
    
    return [UIColor colorWithRed:0.83 green:0.83 blue:0.83 alpha:1.0];
}

+ (UIColor *) gpOrangeColor{
    
    return [UIColor colorWithRed:0.93 green:0.67 blue:0.26 alpha:1.0];
}

+ (UIColor *) gpOrangeColorWithHalfAlpha{
    
    return [UIColor colorWithRed:0.93 green:0.67 blue:0.26 alpha:0.5];
}


+ (UIColor *) gpOrangeColorWithAlpha:(CGFloat ) alpha{
    
    return [UIColor colorWithRed:0.93 green:0.67 blue:0.26 alpha:alpha];
}

+ (UIColor *) gpMessageOrangeColor{
    
    return [UIColor colorWithRed:243.0f/255.0f green:199.0f/255.0f blue:102.0f/255.0f alpha:1.0f];

}

+ (UIColor *) gpMapCircleStroke{
    
    return [UIColor colorWithRed:237.0/255.0 green:178.0/255.0 blue:81.0/255.0 alpha:1.0];
    
}



@end
