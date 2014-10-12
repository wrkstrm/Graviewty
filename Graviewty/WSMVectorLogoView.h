//
//  WSVectorLogoView.h
//  StarterPack
//
//  Created by Cristian A Monterroza on 1/11/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "WSMGravityButton.h"

@interface WSMVectorLogoView : WSMGravityButton

- (void)scaleToWidth:(CGFloat)width andHeight:(CGFloat)height;

- (void)scaleByFactor:(CGFloat)scaleFactor;

- (void)pulseView:(BOOL)pulse;

- (void)pulseView:(BOOL)pulse withDelay:(CGFloat)delay;

@end