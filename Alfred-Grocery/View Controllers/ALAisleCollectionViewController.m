//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import <AYKit/AYUICollectionViewCell.h>
#import "ALAisleCollectionViewController.h"
#import "QuickModel.h"
#import "DPCollectionView.h"


@interface ALAisleCollectionViewController () <UICollectionViewDelegateFlowLayout>

@property(nonatomic, strong) NSArray *items;
@end

@implementation ALAisleCollectionViewController

- (void) viewDidLoad {
    [super viewDidLoad];


    self.collectionView.delegate = self;

    self.items = [[QuickModel sharedModel].data valueForKeyPath: @"aisles"];
}


- (NSInteger) collectionView: (UICollectionView *)collectionView numberOfItemsInSection: (NSInteger)section {
    return [self.items count];
}

- (UICollectionViewCell *) collectionView: (UICollectionView *)collectionView cellForItemAtIndexPath: (NSIndexPath *)indexPath {

    AYUICollectionViewCell *ret = [collectionView dequeueReusableCellWithReuseIdentifier: DPCollectionViewCellIdentifier forIndexPath: indexPath];


    id item = self.items[indexPath.item];
    ret.textLabel.text = [item valueForKeyPath: @"name"];

    UIImageView *imageView = ret.imageView;

    imageView.layer.cornerRadius = imageView.bounds.size.width / 5;


//    [ret.imageView addDebugBorderWithColor: nil];
    return ret;

//    return [super collectionView: collectionView cellForItemAtIndexPath: indexPath];
}

#pragma mark UICollectionViewDelegateFlowLayout


- (UIEdgeInsets) collectionView: (UICollectionView *)collectionView layout: (UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex: (NSInteger)section {
    return UIEdgeInsetsMake(0, 15, 0, 15);
}


@end