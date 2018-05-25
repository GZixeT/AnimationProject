//
//  VCAnimation.m
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import "VCAnimation.h"
#import "VCMain.h"
#import "Animations.h"
#import "CVAlert.h"
@interface VCAnimation ()
@property Animations *animations;
@property UIImage *abImage;
@property UIImage *qbImage;
@end

@implementation VCAnimation

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.animations=[[Animations alloc]init];
    [self.animationButton removeConstratAtAttribute:NSLayoutAttributeWidth];
    [self.animationButton removeConstratAtAttribute:NSLayoutAttributeHeight];
    [self.animationButton addWidthConstraint:200];
    [self.animationButton addHeightConstraint:200];
    [self.animationButton setTitle:nil forState:UIControlStateNormal];
    self.abImage=[UIImage imageNamed:@"Ace.png"];
    self.qbImage=[UIImage imageNamed:@"Queen.png"];
    [self.animationButton setImageName:@"Ace.png"];
    [self.animationButton setBackgroundImage:self.abImage forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (IBAction)RBClick:(id)sender {
    [self.animationButton printAllConstains];
    CVAlert *remove=[CVAlert alertControllerWithTitle:@"Remove constraints" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    [remove addButton:@"remove all" action:^
     {
         [self.animationButton removeAllConstraints];
     }];
    [remove addButton:@"remove width" action:^
     {
         [self.animationButton removeConstratAtAttribute:NSLayoutAttributeWidth];
     }];
    [remove addButton:@"remove height" action:^
     {
         [self.animationButton removeConstratAtAttribute:NSLayoutAttributeHeight];
     }];
    [remove addButton:@"remove centerX" action:^
     {
         [self.animationButton removeConstratAtAttribute:NSLayoutAttributeCenterX];
     }];
    [remove addButton:@"remove centerY" action:^
     {
         [self.animationButton removeConstratAtAttribute:NSLayoutAttributeCenterY];
     }];
    [remove show:YES view:self];
}
- (IBAction)CMBClick:(id)sender
{
    [self.animationButton printAllConstains];
    CVAlert *alert=[CVAlert alertControllerWithTitle:@"" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    [alert addButton:@"set Image" action:^
    {
        UIImage *bImage=[UIImage imageNamed:@"Ace.png"];
        [self.animationButton setBackgroundImage:bImage forState:UIControlStateNormal];
    }];
    [alert addButton:@"add width" action:^
     {
         [self.animationButton addWidthConstraint:240];
     }];
    [alert addButton:@"add height" action:^
     {
         [self.animationButton addHeightConstraint:200];
     }];
    [alert addButton:@"add centerX" action:^
     {
         [self.animationButton addCenterXConstraint:self.animationButton];
     }];
    [alert addButton:@"add centerY" action:^
     {
         [self.animationButton addCenterYConstraint:self.animationButton];
     }];
    [alert show:YES view:self];
}
- (IBAction)ABClick:(id)sender
{
    if([self.animationButton.imageName isEqualToString:@"Queen.png"])
    {
        [self.animationButton setImageName:@"Ace.png"];
        [self.animationButton setBackgroundImage:self.abImage forState:UIControlStateNormal];
    }
    else
    {
        [self.animationButton setImageName:@"Queen.png"];
        [self.animationButton setBackgroundImage:self.qbImage forState:UIControlStateNormal];
    }
}

- (IBAction)BBClick:(id)sender
{
    UIStoryboard *back=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    [back instantiateViewControllerWithIdentifier:@"Main"];
    VCAnimation *viewController = (VCAnimation*)[back instantiateViewControllerWithIdentifier:@"Main"];
    [self presentViewController:viewController animated:NO completion:nil];
}
- (void)viewDidAppear:(BOOL)animated
{
    [self.animations action:STANDART_DURATION animation:^
    {
        self.view.frame=CGRectMake(0, 0, self.animations.screenWidth, self.animations.screenHeight);
    }];
}
- (void) viewWillAppear:(BOOL)animated
{
    [self.animations action:STANDART_DURATION animation:^
    {
        self.view.frame=CGRectMake(self.animations.screenHeight, 0, 0, 0);
    }];
}

@end
