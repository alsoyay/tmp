//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "ALAddItemViewController.h"
//#import "AYCoverAnimator.h"
#import "AYCoverAnimator.h"


@interface ALAddItemViewController ()

@property(nonatomic, strong) AYCoverAnimator *animator;
@end

@implementation ALAddItemViewController {

}


- (void) viewDidLoad {
    [super viewDidLoad];


    self.animator = [AYCoverAnimator new];
    self.navigationController.delegate = self;
}

- (id <UIViewControllerAnimatedTransitioning>) navigationController: (UINavigationController *)navigationController animationControllerForOperation: (UINavigationControllerOperation)operation fromViewController: (UIViewController *)fromVC toViewController: (UIViewController *)toVC {
//   self.animator.re

    return self.animator;
}


@end