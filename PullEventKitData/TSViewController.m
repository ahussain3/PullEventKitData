//
//  TSViewController.m
//  PullEventKitData
//
//  Created by Awais Hussain on 1/25/13.
//  Copyright (c) 2013 Awais Hussain. All rights reserved.
//

#import "TSViewController.h"
#import "EventKitData.h"

@interface TSViewController ()

@end

@implementation TSViewController

- (IBAction)runProgram:(id)sender {
    NSLog(@"Programming running");

    // Get today's date
    NSDate *endDate = [NSDate date];
    NSTimeInterval interval = -60*60*24*7;
    NSDate *startDate = [NSDate dateWithTimeInterval:interval sinceDate:endDate];
    
    // Get default calendar for new events
    EKEventStore *eventStore = [[EKEventStore alloc] init];
    EKCalendar *calendar = [eventStore defaultCalendarForNewEvents];

    // Debugging
    NSLog(@"About to call get data function");
    NSLog(@"With Start Date: %@", startDate);
    NSLog(@"With End Date: %@", endDate);
    NSLog(@"With Calendar: %@", calendar.title);
    
    // Call function 
    EventKitData *eventKitData = [[EventKitData alloc] init];
    NSArray *arrayOfEvents = [eventKitData eventsForStartDate:startDate endDate:endDate andCalendar:calendar];
    
    // use the output of the function
    arrayOfEvents = arrayOfEvents;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
