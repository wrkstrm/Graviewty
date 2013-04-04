//
//  WSGravityView.h
//  wrkstrm
//
//  Created by Cristian A Monterroza on 3/22/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "WSMotionManager.h"

@interface WSGravityButton : UIButton

@property (nonatomic) CMAcceleration gravityMultiplier;
@property (nonatomic) CGFloat shadowOffset;
//The above two create the offset.
@property (nonatomic) CGSize lightShadowOffset;
@property (nonatomic) BOOL animating;

- (void) commonInitializer;

@end
