//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "DPStaticHeaderTableViewController.h"


@implementation DPStaticHeaderTableViewController {

}


- (void) viewDidLoad {
    [super viewDidLoad];



    self.tableView.rowHeight = UITableViewAutomaticDimension;

}


- (CGFloat) tableView: (UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *)indexPath {
    CGFloat ret = [super tableView: tableView heightForRowAtIndexPath: indexPath];

    if (indexPath.section > 0) {
//        ret = UITableViewAutomaticDimension;

        CGFloat headerHeight = tableView.rowHeight;

        CGFloat contentHeight = tableView.frame.size.height - headerHeight;
        ret = contentHeight;

    }
    return ret;
//    return 0;
}

@end