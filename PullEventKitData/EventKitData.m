//
//  EventKitData.m
//  PullEventKitData
//
//  Created by Awais Hussain on 1/25/13.
//  Copyright (c) 2013 Awais Hussain. All rights reserved.
//

#import "EventKitData.h"

@implementation EventKitData

// Returns array of EKEvent objects
// calendars is an NSArray of EKCalendar objects
- (NSArray *) eventsForStartDate:(NSDate *)startDate endDate:(NSDate *)endDate andCalendars:(NSArray *)calendars {
    NSArray *result = [[NSArray alloc] init];
    
    
    
    
    
    
    
    return result;
}

- (NSArray *) eventsForStartDate:(NSDate *)startDate endDate:(NSDate *)endDate andCalendar:(EKCalendar *)calendar {
    NSLog(@"Enter Get Events function");
    
    // Get eventstore object
    EKEventStore *eventStore = [[EKEventStore alloc] init];
    
    // retrieve calendar - is a parameter in the function
    
    // Print calendar information
    NSLog(@"Calendar Title: %@", calendar.title);
    
    // Get events for calendar
    NSArray *calendarArray = [NSArray arrayWithObject:calendar];
    NSPredicate *searchPredicate = [eventStore predicateForEventsWithStartDate:startDate endDate:endDate calendars:calendarArray];
    
    NSArray *eventArray = [eventStore eventsMatchingPredicate:searchPredicate];
    
    // print first event in log file
    for (EKEvent* event in eventArray) {
        NSLog(@"No. of events found: %i", [eventArray count]);
        NSLog(@"Event Title: %@", event.title);
        NSLog(@"Event Location: %@", event.location);
        NSLog(@"Event Start Date: %@", event.startDate);
        NSLog(@"Event End Date: %@", event.endDate);
        
    }
    
    return eventArray;
}


@end


