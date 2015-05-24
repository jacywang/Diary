//
//  EntryCell.h
//  Diary
//
//  Created by JIAN WANG on 5/24/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DiaryEntry;

@interface EntryCell : UITableViewCell

+ (CGFloat)heightForEntry:(DiaryEntry *)entry;
- (void)configureCellForEntry:(DiaryEntry *)entry;

@end
