//
//  VCTestViewController.h
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol VCTestDelegate;
@interface VCTest : UIViewController
@property (nonatomic,assign) id <VCTestDelegate> delegate;
@end

@protocol VCTestDelegate <NSObject>
@optional
- (void) animate;
@end
