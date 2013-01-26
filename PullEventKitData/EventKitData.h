//
//  EventKitData.h
//  PullEventKitData
//
//  Created by Awais Hussain on 1/25/13.
//  Copyright (c) 2013 Awais Hussain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>

@interface EventKitData : NSObject

// Returns array of all EKEvent objects
- (NSArray *) eventsForStartDate:(NSDate *)startDate endDate:(NSDate *)endDate;

- (NSArray *) eventsForStartDate:(NSDate *)startDate endDate:(NSDate *)endDate andCalendar:(EKCalendar *)calendar;

@end
