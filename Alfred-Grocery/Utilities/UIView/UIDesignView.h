//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>

IB_DESIGNABLE

@interface UIDesignView : UIView

@property(nonatomic) IBInspectable CGFloat borderWidth;
@property(nonatomic) IBInspectable CGFloat cornerRadius;
@property(nonatomic, strong) IBInspectable UIColor *borderColor;
@end