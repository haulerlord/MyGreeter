//
//  GreeterTests.m
//  MyGreeterTests
//
//  Created by hauler on 2022/8/8.
//

#import <XCTest/XCTest.h>
#import "Mygreeter.h"

@interface GreeterTests : XCTestCase

@end

@implementation GreeterTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

-(void)testGreeter
{
    MyGreeter *greeter = [[MyGreeter alloc] init];

    XCTAssertTrue([greeter greet],@"");
    
    XCTAssertTrue([greeter greetWithDate:[NSDate date]]);
    
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    
    NSString* dateStr = @"2022-08-08 12:10:00";
    NSDate *date = [formatter dateFromString:dateStr];

    
    NSString* dateStr1 = @"2022-08-08 22:10:00";
    NSDate *date1 = [formatter dateFromString:dateStr1];
    
    
    XCTAssertTrue([[greeter greetWithDate:date] isEqualToString:@"下午好"], @"");
    XCTAssertTrue([[greeter greetWithDate:date1] isEqualToString:@"晚上好"], @"");

    
    
    
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
