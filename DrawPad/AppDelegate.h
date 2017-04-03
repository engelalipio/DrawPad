//
//  AppDelegate.h
//  DrawPad
//
//  Created by Ray Wenderlich on 9/3/12.
//  Copyright (c) 2017 Engel Alipio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsViewController.h"
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (assign, nonatomic) CGPoint pntLastPoint;
@property (assign, nonatomic) CGFloat redPoint;
@property (assign, nonatomic) CGFloat greenPoint;
@property (assign, nonatomic) CGFloat bluePoint;
@property (assign, nonatomic) CGFloat brushPoint;
@property (assign, nonatomic) CGFloat opaciyPoint;
@property (strong, nonatomic) UIColor* background;
@property (assign,nonatomic)  ViewController *drawPadVC;

+(AppDelegate *) currentDelegate;

-(void) saveSettings:(id)sender;



@end
