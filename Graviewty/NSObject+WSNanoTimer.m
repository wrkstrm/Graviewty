//
//  NSObject+WSNanoTimer.m
//  WSNanoTimer
//
//  Created by Cristian A Monterroza on 4/4/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "NSObject+WSNanoTimer.h"
#import <mach/mach_time.h>

static uint64_t sTimebaseRatio;

@implementation NSObject (WSNanoTimer)

+ (void) load {
    mach_timebase_info_data_t sTimebaseInfo;
    
    mach_timebase_info(&sTimebaseInfo);
    
    sTimebaseRatio = sTimebaseInfo.numer / sTimebaseInfo.denom;
}

- (CFTimeInterval) executionTime: (WSTimeUnit) timeUnit block: (void (^)(void)) block {
    
    NSUInteger startTime = mach_absolute_time();
    
    block();
    
    NSUInteger endTime = mach_absolute_time();
    
    return (endTime - startTime) * sTimebaseRatio / pow(10, 9 - timeUnit);
}

@end