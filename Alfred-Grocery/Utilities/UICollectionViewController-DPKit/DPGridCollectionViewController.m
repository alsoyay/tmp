//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "DPGridCollectionViewController.h"


@implementation DPGridCollectionViewController


- (id) initWithCoder: (NSCoder *)coder {
    self = [super initWithCoder: coder];
    if (self) {
        self.columns = 3;
    }

    return self;
}


#pragma mark UICollectionViewDelegateFlowLayout

- (CGSize) collectionView: (UICollectionView *)collectionView layout: (UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath: (NSIndexPath *)indexPath {

    UIEdgeInsets insets = [self collectionView: collectionView layout: collectionViewLayout insetForSectionAtIndex: indexPath.section];

    CGFloat width = (collectionView.frame.size.width - insets.left - insets.right) / self.columns;

    return CGSizeMake(width, width);
}

- (UIEdgeInsets) collectionView: (UICollectionView *)collectionView layout: (UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex: (NSInteger)section {
    return UIEdgeInsetsZero;
}

- (CGFloat) collectionView: (UICollectionView *)collectionView layout: (UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex: (NSInteger)section {
    return 0;
}

- (CGFloat) collectionView: (UICollectionView *)collectionView layout: (UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex: (NSInteger)section {
    return 0;
}

@end