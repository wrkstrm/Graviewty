//
//  NSObject+WSNanoTimer.h
//  WSNanoTimer
//
//  Created by Cristian A Monterroza on 4/4/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//
/*
typedef enum {
    kWSTimeUnitNanosecond,
    kWSTimeUnitMicrosecond = 3,
    kWSTimeUnitMillisecond = 6,
    kWSTimeUnitCentisecond,
    kWSTimeUnitDecisecond
    kWSTimeUnitSecond
} WSTimeUnit;
*/

typedef enum {
    kWSTimeUnitSecond,
    kWSTimeUnitDecisecond,
    kWSTimeUnitCentisecond,
    kWSTimeUnitMillisecond,
    kWSTimeUnitMicrosecond = 6,
    kWSTimeUnitNanosecond = 9,
} WSTimeUnit;

@interface NSObject (WSNanoTimer)

- (CFTimeInterval) executionTime: (WSTimeUnit) timeUnit block: (void (^)(void)) block;


@end