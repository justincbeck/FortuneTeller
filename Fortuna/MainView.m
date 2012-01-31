//
//  MainView.m
//  Fortuna
//
//  Created by Justin Beck on 1/13/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import "MainView.h"

@implementation MainView

@synthesize leftDrawerView = _leftDrawerView;
@synthesize rightDrawerView = _rightDrawerView;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor purpleColor]; 
        
        _leftDrawerView = [[DrawerView alloc] initWithFrame:CGRectMake(-235.0f, 0.0f, 240.0f, 300.0f)];
        _leftDrawerView.backgroundColor = [UIColor yellowColor];
        [self addSubview:_leftDrawerView];
        
        _rightDrawerView = [[DrawerView alloc] initWithFrame:CGRectMake(475.0f, 0.0f, 240.0f, 300.0f)];
        _rightDrawerView.backgroundColor = [UIColor orangeColor];
        [self addSubview:_rightDrawerView];
    }
    return self;
}

@end
