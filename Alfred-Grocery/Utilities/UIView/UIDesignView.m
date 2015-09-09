//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "UIDesignView.h"


@implementation UIDesignView


- (id) initWithCoder: (NSCoder *)coder {
    self = [super initWithCoder: coder];
    if (self) {
        _borderColor = [UIColor clearColor];
    }

    return self;
}

- (void) prepareForInterfaceBuilder {
    [super prepareForInterfaceBuilder];

    self.layer.borderWidth = self.borderWidth;
    self.layer.borderColor = self.borderColor.CGColor;
}

@end