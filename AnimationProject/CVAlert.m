//
//  CVAlert.m
//  AnimationProject
//
//  Created by Георгий Зубков on 25.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import "CVAlert.h"

@implementation CVAlert
- (void) addButton:(NSString*)title action:(void (^ __nullable) (void))actions
{
    UIAlertAction *button = [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction *action)
    {
        actions();
    }];
    [self addAction:button];
}
- (void) show:(BOOL)animated view:(UIViewController*)view
{
    [view presentViewController:self animated:animated completion:nil];
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    [self addButton:@"Back" action:^{}];
}
@end
