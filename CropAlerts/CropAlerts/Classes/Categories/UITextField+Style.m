//
//  GPTextField.m
//  GoPatoDrive
//
//  Created by JayD on 03/03/2015.
//  Copyright (c) 2015 Pikes. All rights reserved.
//

#import "UITextField+Style.h"

@implementation UITextField (Style)

- (void) setLeftSpaceSize:(CGFloat) size
{
    UIView *spaceView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size, 34.0)];
    [spaceView setBackgroundColor:[UIColor clearColor]];
    self.leftView = spaceView;
    self.leftViewMode = UITextFieldViewModeAlways;
}

@end
