//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "ALMyItemsViewController.h"
#import "QuickModel.h"


@interface ALMyItemsViewController ()

@property(nonatomic, strong) NSMutableDictionary *items;
@property(nonatomic, strong) NSDictionary *mappings;
@property(nonatomic, strong) NSArray *sections;
@property(nonatomic, strong) NSArray *swiftSections;
@property(nonatomic, strong) NSArray *sources;
@end

@implementation ALMyItemsViewController


- (void) viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;


    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 60;


    self.mappings = @{
            @"sections" : @[
                    @(ALItemFrequencyRepeatsOnce),
                    @(ALItemFrequencyRepeatsForever)
            ]
    };



    self.sources = @[
            [[ALSource alloc] initWithFrequency: ALItemFrequencyRepeatsOnce],
            [[ALSource alloc] initWithFrequency: ALItemFrequencyRepeatsForever],
    ];

    [self filterItems];

    [self tests];


}

- (void) tests {

    NSArray *something = [ALItem allFrequencyValues];
    NSLog(@"something = %@", something);

//    [ALItem test];

}


- (void) filterItems {


//    self.sections = [ALSwift sortedItems];


//    NSArray *items = [ALMock items];

//    self.sections = @[
//            [items itemsWithOccurence: ALItemFrequencyRepeatsOnce],
//            [items itemsWithOccurence: ALItemFrequencyRepeatsForever]
//    ];;
}

#pragma mark IBActions

- (IBAction) editTapped: (id)sender {
    [self.tableView setEditing: !self.tableView.editing animated: YES];
}


#pragma mark UITableViewDelegate

- (UITableViewCell *) tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath {
    UITableViewCell *ret = [tableView dequeueReusableCellWithIdentifier: @"TableCell" forIndexPath: indexPath];

    ALItem *item = self.sources[indexPath.section][indexPath.row];
    ret.textLabel.text = item.name;
    ret.detailTextLabel.text = [item valueForKey: @"extendedName"];

    return ret;
}


- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection: (NSInteger)section {
    return [self.sources[section] count];
}

- (NSInteger) numberOfSectionsInTableView: (UITableView *)tableView {
    return [self.sources count];
}


- (void) tableView: (UITableView *)tableView moveRowAtIndexPath: (NSIndexPath *)sourceIndexPath toIndexPath: (NSIndexPath *)destinationIndexPath {


    if (sourceIndexPath.section != destinationIndexPath.section) {


        ALSource *source = self.sources[sourceIndexPath.section];
        ALSource *destination = self.sources[destinationIndexPath.section];


        ALItem *item = source[sourceIndexPath.row];
        item.frequency = destination.frequency;


        NSLog(@"[source.items count] = %i", [source.items count]);
        NSLog(@"[destination.items count] = %i", [destination.items count]);
        [source move: item destination: destination index: destinationIndexPath.row];


        NSLog(@"[source.items count] = %i", [source.items count]);
        NSLog(@"[destination.items count] = %i", [destination.items count]);



    }
}

- (CGFloat) tableView: (UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *)indexPath {
    return 60;
}

- (CGFloat) tableView: (UITableView *)tableView heightForHeaderInSection: (NSInteger)section {
    return 22;
}


- (UIView *) tableView: (UITableView *)tableView viewForHeaderInSection: (NSInteger)section {
    UITableViewCell *ret = [tableView dequeueReusableCellWithIdentifier: @"HeaderCell"];

    ret.textLabel.text = [section == 0 ? @"This week's items" : @"Keep In Stock" uppercaseString];
    [ret.contentView layoutIfNeeded];
    return ret.contentView;
}

#pragma mark UITableViewDatasource

//- (NSArray *) sectionIndexTitlesForTableView: (UITableView *)tableView {
//    return nil;
//}

- (BOOL) tableView: (UITableView *)tableView canEditRowAtIndexPath: (NSIndexPath *)indexPath {
    return YES;
}


- (BOOL) tableView: (UITableView *)tableView canMoveRowAtIndexPath: (NSIndexPath *)indexPath {
    return YES;
}


- (void) tableView: (UITableView *)tableView commitEditingStyle: (UITableViewCellEditingStyle)editingStyle forRowAtIndexPath: (NSIndexPath *)indexPath {

    NSLog(@"%s", __PRETTY_FUNCTION__);
}


#pragma mark Utilities


@end