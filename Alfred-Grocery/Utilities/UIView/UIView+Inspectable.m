//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "UIView+Inspectable.h"


@implementation UIView (Inspectable)


- (CGFloat) borderWidth {
    return self.layer.borderWidth;
}

- (void) setBorderWidth: (CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat) cornerRadius {
    return 0;
}

- (void) setCornerRadius: (CGFloat)cornerRadius {

}

- (UIColor *) borderColor {
    return nil;
}

- (void) setBorderColor: (UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}


- (void) prepareForInterfaceBuilder {
    [super prepareForInterfaceBuilder];

    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
}


@end