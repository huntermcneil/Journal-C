//
//  EntryController.h
//  Journal-C
//
//  Created by Hunter McNeil on 6/22/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

// SOT
@property (nonatomic, strong) NSMutableArray *entries;

// Shared Instance
+ (EntryController *) shared;

@end

NS_ASSUME_NONNULL_END
