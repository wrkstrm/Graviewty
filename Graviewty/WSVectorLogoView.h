//
//  WSVectorLogoView.h
//  StarterPack
//
//  Created by Cristian A Monterroza on 1/11/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "WSGravityButton.h"

@interface WSVectorLogoView : WSGravityButton

- (void) scaleToWidth: (float) width andHeight: (float) height;
- (void) scaleByFactor: (float) scaleFactor;
- (void) pulseView: (BOOL) pulse;
- (void) pulseView: (BOOL) pulse withDelay: (float) delay;

@end