//
//  WSMotionManager.m
//  wrkstrm
//
//  Created by Cristian A Monterroza on 3/22/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "WSMotionManager.h"
@interface WSMotionManager ()

@property (nonatomic , strong) NSMutableDictionary *timerDictionary;
@end

@implementation WSMotionManager

+ (WSMotionManager *) sharedManager {
    static WSMotionManager *sharedManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ sharedManager = [WSMotionManager new]; });
    return sharedManager;
}

+ (NSOperationQueue *) sharedQueue {
    static NSOperationQueue *sharedQueue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ sharedQueue = [NSOperationQueue new]; });
    return sharedQueue;
}

- (id) init {
    if (!(self = [super init])) return nil;
    
    self.deviceMotionUpdateInterval = 1.0f / 4.0f;
    [self startDeviceMotionUpdatesUsingReferenceFrame:CMAttitudeReferenceFrameXArbitraryZVertical
                                              toQueue:[WSMotionManager sharedQueue]
                                          withHandler:^(CMDeviceMotion *motion, NSError *error)
     {
         if(motion) {
             self.currentMotion = motion;
         }
         
     }];
    
    return self;
}

@end