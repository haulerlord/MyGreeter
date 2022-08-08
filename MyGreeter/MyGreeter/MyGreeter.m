//
//  MyGreeter.m
//  MyGreeter
//
//  Created by hauler on 2022/8/5.
//

#import "MyGreeter.h"

@implementation MyGreeter

-(NSString *)greet
{
   
    return [self greetWithDate:nil];
}

-(NSString *)greetWithDate:(NSDate *)date
{
    NSCalendar *calendar = [NSCalendar currentCalendar];

    NSDate *currentDate = date ?: [NSDate date];

    NSDateComponents *components = [calendar components:NSCalendarUnitHour fromDate:currentDate];

    NSInteger currentHour = components.hour;

    if (currentHour > 6 && currentHour < 12) {
        
        return @"早上好";
    } else if (currentHour >= 12 && currentHour < 18) {
        
        return @"下午好";
    }
    return @"晚上好";
}


@end
