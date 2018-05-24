//
//  Animations.h
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#define STANDART_DURATION 0.3
@interface Animations : NSObject
@property CGFloat screenWidth;
@property CGFloat screenHeight;
- (void) action:(NSTimeInterval)duration animation:(void (^)(void))animation;
@end
