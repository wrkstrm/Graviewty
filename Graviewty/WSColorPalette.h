//
//  WSColorPalette.h
//
//  Created by Cristian A Monterroza on 9/20/12.
//  Copyright (c) 2012 wrkstrm. All rights reserved.
//

@class RMCalendar;

typedef enum {
    kWSAgendaTypeUncategorized = 0,
	kWSAgendaTypeRecuperate,
	kWSAgendaTypeWork,
	kWSAgendaTypeSocial,
	kWSAgendaTypeExercise,
	kWSAgendaTypeDeadTime,
} WSAgendaType;

typedef enum {
    kWSGradientUncategorized = 0,
	kWSGradientWhite,
	kWSGradientGreen,
	kWSGradientLightBlue,
	kWSGradientRed,
	kWSGradientBlack,
} WSColorGradient;

extern NSString * const kWSAgendaNameUncategorized;
extern NSString * const kWSAgendaNameRecuperate;
extern NSString * const kWSAgendaNameWork;
extern NSString * const kWSAgendaNameSocial;
extern NSString * const kWSAgendaNameExercise;
extern NSString * const kWSAgendaNameDeadTime;

extern NSString * const kWSGradientNameUncategorized;
extern NSString * const kWSGradientNameWhite;
extern NSString * const kWSGradientNameGreen;
extern NSString * const kWSGradientNameBlue;
extern NSString * const kWSGradientNameRed;
extern NSString * const kWSGradientNameBlack;

extern NSString * const kWSAgendaQuery;

@interface WSColorPalette : NSObject

UIColor* UIColorMakeRGB(CGFloat red, CGFloat green, CGFloat blue);

+ (UIColor *) colorGradient: (WSColorGradient) colorGradient forIndex: (NSInteger) index ofCount: (NSInteger) count reversed: (BOOL) reversed;
+ (UIColor *) colorForAgenda: (WSAgendaType) agendaConstant forIndex: (NSInteger) index ofCount: (NSInteger) count reversed: (BOOL) reversed;

@end