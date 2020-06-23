//
//  EntriesTableViewController.m
//  Journal-C
//
//  Created by Hunter McNeil on 6/22/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

#import "EntriesTableViewController.h"
#import "EntryController.h"
#import "Entry.h"
#import "DetailViewController.h"

@interface EntriesTableViewController ()

@end

@implementation EntriesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.shared.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entries = EntryController.shared.entries[indexPath.row];
    cell.textLabel.text = entries.title;
    cell.detailTextLabel.text = entries.bodyText;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        Entry * entryToDelete = EntryController.shared.entries[indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:(@"toDetail")]) {
        DetailViewController *detailVC = segue.destinationViewController;
        //Entry *entries = EntryController.shared.entries
    }
}

@end
