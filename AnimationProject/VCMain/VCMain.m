//
//  ViewController.m
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//
#import "VCAnimation.h"
#import "VCMain.h"
#import "Animations.h"
#import "VCTest.h"
@interface VCMain ()
@property Animations *animations;
@end

@implementation VCMain

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.animations=[[Animations alloc]init];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (IBAction)NBClick:(id)sender
{
    UIStoryboard *next=[UIStoryboard storyboardWithName:@"Animation" bundle:nil];
    [next instantiateViewControllerWithIdentifier:@"Animation"];
    VCAnimation *viewController = (VCAnimation*)[next instantiateViewControllerWithIdentifier:@"Animation"];
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
         self.view.frame=CGRectMake(-self.animations.screenHeight, 0, 0, 0);
     }];
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    VCTest *test = (VCTest *)segue.destinationViewController;
    test.delegate=self;
}
- (void) animate
{
    NSLog(@"animate");
//    [self.animations action:STANDART_DURATION animation:^
//     {
//         self.view.frame=CGRectMake(0, 0, self.animations.screenWidth, self.animations.screenHeight);
//     }];
}

@end
