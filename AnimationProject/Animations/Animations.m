//
//  Animations.m
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import "Animations.h"

@interface Animations ()
@end
@implementation Animations
- (id)init
{
    if(self=[super init])
       [self getScreen];
    return self;
}
- (void) getScreen
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    self.screenWidth = screenRect.size.width;
    self.screenHeight = screenRect.size.height;
}
- (void) action:(NSTimeInterval)duration animation:(void (^)(void))animation
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:duration];
    animation();
    [UIView commitAnimations];
}
@end
