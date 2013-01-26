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

// Returns array of EKEvent objects
// calendars is an NSArray of EKCalendar objects
- (NSArray *) eventsForStartDate:(NSDate *)startDate endDate:(NSDate *)endDate andCalendars:(NSArray *)calendars;

- (NSArray *) eventsForStartDate:(NSDate *)startDate endDate:(NSDate *)endDate andCalendar:(EKCalendar *)calendar;

@end
