//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, AYCoverPhase) {
    AYCoverPhaseBefore,
    AYCoverPhaseVisible,
    AYCoverPhaseAfter
};


typedef NS_ENUM(NSInteger, AYCoverDirection) {
    AYCoverDirectionNone,
    AYCoverDirectionTop,
    AYCoverDirectionLeft,
    AYCoverDirectionBottom,
    AYCoverDirectionRight
};


@interface AYCoverAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property(nonatomic) BOOL reverses;
@property(nonatomic) CGFloat duration;
@property(nonatomic) AYCoverDirection direction;
@property(nonatomic) UINavigationControllerOperation operation;
@end