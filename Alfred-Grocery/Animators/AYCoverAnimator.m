//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "AYCoverAnimator.h"


@implementation AYCoverAnimator {

}


- (NSTimeInterval) transitionDuration: (id <UIViewControllerContextTransitioning>)transitionContext {
    return self.duration;
}

- (void) animateTransition: (id <UIViewControllerContextTransitioning>)transitionContext {

    CGRect finalFrame = [transitionContext finalFrameForViewController: [transitionContext viewControllerForKey: UITransitionContextToViewControllerKey]];

    UIView *first = [transitionContext viewForKey: UITransitionContextFromViewKey];
    UIView *second = [transitionContext viewForKey: UITransitionContextToViewKey];
    UIView *container = transitionContext.containerView;


    switch (self.operation) {

        case UINavigationControllerOperationNone:
            break;
        case UINavigationControllerOperationPush : {

            UIView *snapshot = [first snapshotViewAfterScreenUpdates: YES];
            [container addSubview: snapshot];
            [container addSubview: second];

            CGRect rect = second.frame;
            rect.size = container.frame.size;
            second.frame = rect;


//            let snapshot = first.snapshotViewAfterScreenUpdates(true)
//                container.addSubview(snapshot)
//                container.addSubview(second)
//
//                second.size = container.size
//
//                position(second, relativeTo: container, phase: .Before)
//
//                UIView.animateWithDuration(self.transitionDuration(transitionContext),
//                        delay: 0,
//                        usingSpringWithDamping: damping,
//                        initialSpringVelocity: velocity,
//                        options: [],
//                        animations: {
//
//                            second.frame = finalframe
////                            self.position(second, relativeTo: container, phase: .Visible)
//
//                        },
//                        completion: {
//                            (Bool) in
//                            first.removeFromSuperview()
//                            transitionContext.completeTransition(true)
//                        })
            break;
        }
        case UINavigationControllerOperationPop : {

            break;
        }
    }


//        let finalframe = transitionContext.finalFrameForViewController(transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!)
//
//
//
//        if let first = transitionContext.viewForKey(UITransitionContextFromViewKey),
//        let second = transitionContext.viewForKey(UITransitionContextToViewKey),
//        let container = transitionContext.containerView() {
//
//
//
//
//
//            switch operation {
//
//            case .Push:
//                let snapshot = first.snapshotViewAfterScreenUpdates(true)
//                container.addSubview(snapshot)
//                //            container.addSubview(first)
//                container.addSubview(second)
//
//                second.size = container.size
//
//                position(second, relativeTo: container, phase: .Before)
//
//                UIView.animateWithDuration(self.transitionDuration(transitionContext),
//                        delay: 0,
//                        usingSpringWithDamping: damping,
//                        initialSpringVelocity: velocity,
//                        options: [],
//                        animations: {
//
//                            second.frame = finalframe
////                            self.position(second, relativeTo: container, phase: .Visible)
//
//                        },
//                        completion: {
//                            (Bool) in
//                            first.removeFromSuperview()
//                            transitionContext.completeTransition(true)
//                        })
//
//
//
//            case .Pop:
//                let snapshot = first.snapshotViewAfterScreenUpdates(false)
//                container.addSubview(second)
//                container.addSubview(first)
//
//                second.size = container.size
//
//                UIView.animateWithDuration(self.transitionDuration(transitionContext),
//                        delay: 0,
//                        usingSpringWithDamping: damping,
//                        initialSpringVelocity: velocity,
//                        options: [],
//                        animations: {
//                            self.position(first, relativeTo: container, phase: self.reverses ? .Before : .After)
//                        },
//                        completion: {
//                            finished in
//
////                            snapshot.removeFromSuperview()
//                            transitionContext.completeTransition(true)
//                        })
//
//            default:
//                break
//            }
//
//        }
}

@end