//
//  MainViewController.h
//  Fortuna
//
//  Created by Justin Beck on 1/13/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainView.h"

@interface MainViewController : UIViewController
{
    MainView *_mainView;
}

- (void)drawerSwiped:(id)sender;

@end
