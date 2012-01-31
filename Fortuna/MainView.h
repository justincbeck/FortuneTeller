//
//  MainView.h
//  Fortuna
//
//  Created by Justin Beck on 1/13/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DrawerView.h"

@interface MainView : UIView
{
    DrawerView *_leftDrawerView;
    DrawerView *_rightDrawerView;
}

@property (nonatomic, readonly) DrawerView *leftDrawerView;
@property (nonatomic, readonly) DrawerView *rightDrawerView;

@end
