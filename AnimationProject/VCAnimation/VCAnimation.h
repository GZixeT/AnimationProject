//
//  VCAnimation.h
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CButton.h"

@interface VCAnimation : UIViewController
@property (weak, nonatomic) IBOutlet CButton *animationButton;
@property (weak, nonatomic) IBOutlet CButton *removeButton;
@property (weak, nonatomic) IBOutlet CButton *constraintsButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@end
