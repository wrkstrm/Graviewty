//
//  WSColorPalette.m
//  Reminders Metro
//
//  Created by Cristian A Monterroza on 9/20/12.
//  Copyright (c) 2012 wrkstrm. All rights reserved.
//

#import "WSColorPalette.h"

@implementation WSColorPalette

UIColor* UIColorMakeRGB(CGFloat red, CGFloat green, CGFloat blue) {
	return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];
}

+ (UIColor *) colorGradient: (WSColorGradient) colorGradient forIndex: (NSInteger) index ofCount: (NSInteger) count reversed: (BOOL) reversed {
    return [WSColorPalette colorForAgenda: (WSAgendaType) colorGradient
                                 forIndex: index
                                  ofCount: count
                                 reversed: NO];
}

+ (UIColor *) colorForAgenda: (WSAgendaType) agendaConstant forIndex: (NSInteger) index ofCount: (NSInteger) count reversed: (BOOL) reversed {
    if (reversed)
        index = count - index;
    
    CGFloat startingRedTint, startingGreenTint, startingBlueTint;
    CGFloat endingRedTint, endingGreenTint, endingBlueTint;
    
    CGFloat cutoff = 0;
    switch (agendaConstant) {
        case kWSAgendaTypeWork: {
            startingRedTint = (25 + cutoff * 10);
            startingGreenTint = (190 + cutoff * 10);
            startingBlueTint = (25 + cutoff * 10);
            
            cutoff = 5;
            endingRedTint = (25 + cutoff * 10);
            endingGreenTint = (190 + cutoff * 10);
            endingBlueTint = (25 + cutoff * 10);
        } break;
        case kWSAgendaTypeSocial: {
            startingRedTint = (45 + cutoff* 12);
            startingGreenTint = (100 + cutoff* 12);
            startingBlueTint = (215 + cutoff* 10);
            
            cutoff = 6;
            endingRedTint = (45 + cutoff* 12);
            endingGreenTint = (100 + cutoff* 12);
            endingBlueTint = (215 + cutoff* 10);
            
        } break;
        case kWSAgendaTypeExercise: {
            startingRedTint = (215 + cutoff* 10);
            startingGreenTint = (25 + cutoff* 20);
            startingBlueTint = (25 + cutoff* 10);
            
            cutoff = 4;
            endingRedTint = (215 + cutoff* 10);
            endingGreenTint = (25 + cutoff* 20);
            endingBlueTint = (25 + cutoff* 10);
        } break;
        case kWSAgendaTypeDeadTime: {
            startingRedTint = startingBlueTint = startingGreenTint = (65 + cutoff * 8.0f);
            
            cutoff = 7;
            endingRedTint = endingGreenTint = endingBlueTint  = (65 + cutoff * 8.0f);
        } break;
        case kWSAgendaTypeRecuperate: {
            startingRedTint = startingGreenTint = startingBlueTint = (200 - cutoff * 6.0f);
            
            cutoff = 6;
            endingRedTint = endingGreenTint =  endingBlueTint = (200 - cutoff * 6.0f);
            
        } break;
        default: { return [UIColor darkGrayColor]; } break;
    }
    
    CGFloat delta = 1.0 / cutoff;
    
    if ( count > cutoff )
        delta = 1.0 / count;
    else
        count = cutoff;
    
    assert(index <= count);
    
    CGFloat s = delta * (count - index);
    CGFloat e = delta * index;
    
    CGFloat red = startingRedTint * s + endingRedTint * e;
    CGFloat green = startingGreenTint * s + endingGreenTint * e;
    CGFloat blue = startingBlueTint * s + endingBlueTint * e;
    
    return UIColorMakeRGB(red, green, blue);
}

@end