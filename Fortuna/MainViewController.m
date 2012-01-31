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

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    MainView *mainView = [[MainView alloc] init];
    self.view = mainView;
    
    [UIView animateWithDuration:0.6f delay:0.0f options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState animations:^{
        CGAffineTransform slideRight = CGAffineTransformMakeTranslation(235.0f, 0.0f);
        mainView.leftDrawerView.transform = slideRight;
        CGAffineTransform slideLeft = CGAffineTransformMakeTranslation(-235.0f, 0.0f);
        mainView.rightDrawerView.transform = slideLeft;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.2f delay:0.0f options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState animations:^{
            CGAffineTransform bounceLeft = CGAffineTransformMakeTranslation(220.0f, 0.0f);
            mainView.leftDrawerView.transform = bounceLeft;
            CGAffineTransform bounceRight = CGAffineTransformMakeTranslation(-220.0f, 0.0f);
            mainView.rightDrawerView.transform = bounceRight;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.2f delay:0.0f options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionBeginFromCurrentState animations:^{
                CGAffineTransform bounceLeft = CGAffineTransformMakeTranslation(235.0f, 0.0f);
                mainView.leftDrawerView.transform = bounceLeft;
                CGAffineTransform bounceRight = CGAffineTransformMakeTranslation(-235.0f, 0.0f);
                mainView.rightDrawerView.transform = bounceRight;
            } completion:nil];
        }];
    }];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
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
