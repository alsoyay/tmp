//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface QuickModel : NSObject

@property(nonatomic, strong) NSDictionary *data;
@property(nonatomic, strong) NSArray *items;
+ (QuickModel *) sharedModel;

@end