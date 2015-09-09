//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DPBasicCollectionViewCell : UICollectionViewCell {

}

@property(nonatomic, strong) IBOutlet UILabel *textLabel;
@property(nonatomic, strong) IBOutlet UILabel *detailTextLabel;
@property(nonatomic, strong) IBOutlet UIImageView *imageView;
@property(nonatomic, strong) IBOutlet UIButton *button;
@end