//
//  EntryController.m
//  Journal-C
//
//  Created by Hunter McNeil on 6/22/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

+ (EntryController *)shared
{
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

- (void)addEntry:(Entry *)entry;
{
    [_entries addObject:entry];
}

- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    title = entry.title;
    bodyText = entry.bodyText;
}

- (void)removeEntry:(Entry *)entry;
{
    NSInteger i = [_entries indexOfObject:entry];
    [_entries removeObjectAtIndex: i];
}

@end
