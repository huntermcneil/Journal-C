//
//  Entry.h
//  Journal-C
//
//  Created by Hunter McNeil on 6/22/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *bodyText;
@property (nonatomic, copy, readonly) NSDate *timeStamp;

- (instancetype) initWithName:(NSString *)title bodyText:(NSString *)note timeStamp:(NSDate *)timeStamp;

@end

NS_ASSUME_NONNULL_END
