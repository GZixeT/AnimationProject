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
@interface VCAnimation ()
@property Animations *animations;
@end

@implementation VCAnimation

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.animations=[[Animations alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (IBAction)AMBClick:(id)sender
{
    
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
