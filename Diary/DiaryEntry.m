//
//  DiaryEntry.m
//  Diary
//
//  Created by JIAN WANG on 5/23/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "DiaryEntry.h"


@implementation DiaryEntry

@dynamic body;
@dynamic location;
@dynamic date;
@dynamic mood;
@dynamic imageData;

- (NSString *)sectionName {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM yyy"];
    return [dateFormatter stringFromDate:date];
}

@end
