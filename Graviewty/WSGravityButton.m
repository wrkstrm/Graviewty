//
//  WSGravityView.m
//  wrkstrm
//
//  Created by Cristian A Monterroza on 3/22/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "WSGravityButton.h"

@implementation WSGravityButton

- (void) commonInitializer {
    [self startMonitoringMotion];
    self.backgroundColor = [UIColor clearColor];
}

- (void) startMonitoringMotion {
    __weak WSGravityButton *weakSelf = self;
    [self observeTarget: [WSMotionManager sharedManager] keyPath:@"currentMotion" options:NSKeyValueObservingOptionNew block:^(MAKVONotification *notification) {
        CMAcceleration newGravity = [WSMotionManager sharedManager].currentMotion.gravity;
        CGFloat xGravDelta = fabs(weakSelf.shadowOffset * (weakSelf.gravityMultiplier.x - newGravity.x));
        CGFloat yGravDelta = fabs(weakSelf.shadowOffset * (weakSelf.gravityMultiplier.y - newGravity.y));
        if (xGravDelta > 0.5f  || yGravDelta > 0.5f) {
            weakSelf.gravityMultiplier = newGravity;
            weakSelf.lightShadowOffset = CGSizeMake(self.shadowOffset * self.gravityMultiplier.x, - self.shadowOffset * self.gravityMultiplier.y);
            dispatch_async(dispatch_get_main_queue(), ^{
                [weakSelf setNeedsDisplay];
            });
        }
    }];
}

@end