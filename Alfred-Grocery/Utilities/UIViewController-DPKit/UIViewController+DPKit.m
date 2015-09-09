//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "UIViewController+DPKit.h"


@implementation UIViewController (DPKit)

- (IBAction) dp_dismissViewController: (id) sender {
    [self dismissViewControllerAnimated: YES completion: nil];
}
@end