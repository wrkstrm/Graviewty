//
//  ViewController.m
//  Graviewty
//
//  Created by Cristian A Monterroza on 3/23/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "ViewController.h"
#import "WSVectorLogoView.h"

@interface ViewController ()

@property (nonatomic, strong) WSVectorLogoView *smallVectorLogo;

@end

@implementation ViewController

- (id) initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {}
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.smallVectorLogo = [[WSVectorLogoView alloc] initWithFrame: CGRectMake(0, 0, 280, 170)];
    self.smallVectorLogo.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    self.smallVectorLogo.enabled = YES;
    [self.view addSubview: self.smallVectorLogo];
    [self.smallVectorLogo pulseView: YES];
}

- (void)didReceiveMemoryWarning {[super didReceiveMemoryWarning];}

@end
