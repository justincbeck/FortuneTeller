//
//  MainViewController.m
//  Fortuna
//
//  Created by Justin Beck on 1/13/12.
//  Copyright (c) 2012 Beckproduct. All rights reserved.
//

#import "MainViewController.h"

#import "MainView.h"



@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)loadView
{
    _mainView = [[MainView alloc] init];
    _mainView.leftDrawerView.userInteractionEnabled = YES;
    
    UISwipeGestureRecognizer *leftSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(drawerSwiped:)]; 
    [leftSwipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
    [_mainView.leftDrawerView addGestureRecognizer:leftSwipeGestureRecognizer];  
    _mainView.leftDrawerView.userInteractionEnabled = YES;
    
    UISwipeGestureRecognizer *rightSwipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(drawerSwiped:)];
    [rightSwipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionRight];
    [_mainView.rightDrawerView addGestureRecognizer:rightSwipeGestureRecognizer];  
    _mainView.rightDrawerView.userInteractionEnabled = YES;
    
    self.view = _mainView;
    
    [UIView animateWithDuration:0.6f delay:0.0f options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState animations:^{
        CGAffineTransform slideRight = CGAffineTransformMakeTranslation(235.0f, 0.0f);
        _mainView.leftDrawerView.transform = slideRight;
        CGAffineTransform slideLeft = CGAffineTransformMakeTranslation(-235.0f, 0.0f);
        _mainView.rightDrawerView.transform = slideLeft;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.2f delay:0.0f options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState animations:^{
            CGAffineTransform bounceLeft = CGAffineTransformMakeTranslation(220.0f, 0.0f);
            _mainView.leftDrawerView.transform = bounceLeft;
            CGAffineTransform bounceRight = CGAffineTransformMakeTranslation(-220.0f, 0.0f);
            _mainView.rightDrawerView.transform = bounceRight;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.2f delay:0.0f options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionBeginFromCurrentState animations:^{
                CGAffineTransform bounceLeft = CGAffineTransformMakeTranslation(235.0f, 0.0f);
                _mainView.leftDrawerView.transform = bounceLeft;
                CGAffineTransform bounceRight = CGAffineTransformMakeTranslation(-235.0f, 0.0f);
                _mainView.rightDrawerView.transform = bounceRight;
            } completion:nil];
        }];
    }];
}

- (void)drawerSwiped:(id)sender
{
    if (((UISwipeGestureRecognizer *)sender).view == _mainView.rightDrawerView)
        NSLog(@"Right Drawer Swiped!");
    else
        NSLog(@"Left Drawer Swiped!");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIDeviceOrientationIsLandscape(interfaceOrientation);
}

@end
