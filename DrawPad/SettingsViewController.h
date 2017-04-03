//
//  SettingsViewController.h
//  DrawPad
//
//  Created by Engel Alipio on 9/3/12.
//  Copyright (c) 2017 Engel Alipio. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SettingsViewControllerDelegate <NSObject>
- (void)closeSettings:(id)sender;
@end

@interface SettingsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblSaveStatus;

@property (weak, nonatomic) IBOutlet UISlider *brushControl;
@property (weak, nonatomic) IBOutlet UISlider *opacityControl;
@property (weak, nonatomic) IBOutlet UIImageView *brushPreview;
@property (weak, nonatomic) IBOutlet UIImageView *opacityPreview;
@property (weak, nonatomic) IBOutlet UILabel *brushValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *opacityValueLabel;
@property (weak, nonatomic) id<SettingsViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISlider *redControl;
@property (weak, nonatomic) IBOutlet UISlider *greenControl;
@property (weak, nonatomic) IBOutlet UISlider *blueControl;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;

@property (strong, nonatomic) IBOutlet UIButton *lblBackgroundBlack;

@property (strong, nonatomic) IBOutlet UIButton *lblBackgroundBlue;

@property (strong, nonatomic) IBOutlet UIButton *lblBackgroundGreen;

@property (strong, nonatomic) IBOutlet UIButton *lblBackgroundRed;

@property (strong, nonatomic) IBOutlet UIButton *lblBackgroundYellow;

@property (strong, nonatomic) IBOutlet UIButton *lblBackgroundWhite;

@property (strong, nonatomic) IBOutlet UILabel *lblBackgroundCurrent;



@property CGFloat brush;
@property CGFloat opacity;
@property CGFloat red;
@property CGFloat green;
@property CGFloat blue;
@property UIColor *background;

- (IBAction)closeSettings:(id)sender;
- (IBAction)sliderChanged:(id)sender;

-(IBAction)backgroundSection:(id)sender;

@end
