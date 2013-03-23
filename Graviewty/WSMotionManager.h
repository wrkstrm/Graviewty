//
//  WSMotionManager.h
//  wrkstrm
//
//  Created by Cristian A Monterroza on 3/22/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import <CoreMotion/CoreMotion.h>

@interface WSMotionManager : CMMotionManager

+ (WSMotionManager *) sharedManager;
+ (NSOperationQueue *) sharedQueue;

@property (nonatomic, strong) CMDeviceMotion *currentMotion;

@end