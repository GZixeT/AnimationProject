//
//  VCTestViewController.m
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import "VCTest.h"
#import "VCMain.h"
#import "Animations.h"

@interface VCTest ()

@end

@implementation VCTest

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.delegate animate];
    VCMain *main = (VCMain *)segue.destinationViewController;
    
}

@end
