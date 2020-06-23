//
//  Entry.m
//  Journal-C
//
//  Created by Hunter McNeil on 6/22/20.
//  Copyright © 2020 Hunter McNeil. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithName:(NSString *)title bodyText:(NSString *)bodyText timeStamp:(NSDate *)timeStamp
{
    self = [super init];
    
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timeStamp = timeStamp;
    }
    return self;
}

@end
