//
//  DiaryEntry.h
//  Diary
//
//  Created by JIAN WANG on 5/23/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ENUM(int16_t, DiaryEntryMood) {
    DiaryEntryMoodGood = 0,
    DiaryEntryMoodAverage = 1,
    DiaryEntryMoodBad = 2
    
};

@interface DiaryEntry : NSManagedObject

@property (nonatomic, retain) NSString * body;
@property (nonatomic, retain) NSString * location;
@property (nonatomic) NSTimeInterval date;
@property (nonatomic) int16_t mood;
@property (nonatomic, retain) NSData * imageData;

@property (nonatomic, readonly) NSString *sectionName;

@end
