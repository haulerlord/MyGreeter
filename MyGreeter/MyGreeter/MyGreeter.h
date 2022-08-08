//
//  MyGreeter.h
//  MyGreeter
//
//  Created by hauler on 2022/8/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyGreeter : NSObject


-(NSString *)greet;

-(NSString *)greetWithDate:(nullable NSDate *)date;

@end

NS_ASSUME_NONNULL_END
