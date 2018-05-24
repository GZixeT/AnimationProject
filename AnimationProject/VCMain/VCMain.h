//
//  ViewController.h
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCTest.h"

@interface VCMain : UIViewController <VCTestDelegate>
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@end

