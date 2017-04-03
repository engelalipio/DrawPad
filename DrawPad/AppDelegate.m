//
//  AppDelegate.m
//  DrawPad
//
//  Created by Ray Wenderlich on 9/3/12.
//  Copyright (c) 2017 Engel Alipio. All rights reserved.
//

#import "AppDelegate.h"


//Notifications
#define kSavedSettingsNotifications   @"DrawPad.Views.Settings.Notifications"

@interface AppDelegate()


@end

@implementation AppDelegate

@synthesize drawPadVC = _drawPadVC;
@synthesize pntLastPoint = _pntLastPoint;
@synthesize redPoint = _redPoint;
@synthesize bluePoint = _bluePoint;
@synthesize greenPoint = _greenPoint;
@synthesize brushPoint = _brushPoint;
@synthesize opaciyPoint = _opaciyPoint;
@synthesize background = _background;

+(AppDelegate *) currentDelegate{
    
    AppDelegate *singleTon = nil;
    @try {
        
      singleTon =  (AppDelegate *)[[UIApplication sharedApplication] delegate];
        
        if (singleTon){
            NSLog(@"AppDelegate->currentDelegate::obtained...");
        }
        
    } @catch (NSException *exception) {
        NSLog(@"%@",exception.debugDescription);
    } @finally {
        
    }
    return singleTon;
}

-(void) saveSettings:(NSNotification*)anySettings{
    
    SettingsViewController *settingsVC = nil;
    
    @try {
        
        if (anySettings){
            
            settingsVC = (SettingsViewController*) [anySettings object];
            
            if (settingsVC){
                self.brushPoint = settingsVC.brush;
                self.redPoint = settingsVC.red;
                self.opaciyPoint = settingsVC.opacity;
                self.bluePoint = settingsVC.blue;
                self.greenPoint = settingsVC.green;
                self.background = settingsVC.background;
                if (self.drawPadVC){
                    [self.drawPadVC closeSettings:settingsVC];
                }
            }
            
 
        }
    }
     @catch (NSException *exception) {
        NSLog(@"%@",exception.debugDescription);
    } @finally {
        settingsVC = nil;
    }
}


-(void) registerSaveSettingsNotification{
    
    [[NSNotificationCenter defaultCenter] addObserverForName:kSavedSettingsNotifications
                                                      object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note){
                                                          
                                                          [self saveSettings:note];
                                                          
                                                      }];

    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self registerSaveSettingsNotification];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
