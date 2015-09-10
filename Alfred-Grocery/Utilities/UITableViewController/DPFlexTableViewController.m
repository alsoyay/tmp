//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "DPFlexTableViewController.h"


NSString *const DPFlexIdentifier = @"FlexCell";

@implementation DPFlexTableViewController


- (void) viewDidLoad {
    [super viewDidLoad];
    NSLog(@"self.tableView.estimatedRowHeight = %f", self.tableView.estimatedRowHeight);
    NSLog(@"self.tableView.rowHeight = %f", self.tableView.rowHeight);
//    self.tableView.rowHeight = UITableViewAutomaticDimension;

}


- (CGFloat) tableView: (UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *)indexPath {
    CGFloat ret = [super tableView: tableView heightForRowAtIndexPath: indexPath];


    if (indexPath.section > 0 && indexPath.section != tableView.numberOfSections - 1) {
//        ret = UITableViewAutomaticDimension;

        CGFloat headerHeight = tableView.rowHeight;
        // int numSections = tableView.numberOfSections;

//        headerHeight = numSections > 2 ? headerHeight : (numSections - 2) * headerHeight;

        CGFloat contentHeight = tableView.frame.size.height - self.staticHeightValue;
        ret = contentHeight;
//        ret = UITableViewAutomaticDimension;

    } else {
//        ret = self.tableView.estimatedRowHeight;
    }




    return ret;
//    return 0;
}


@end