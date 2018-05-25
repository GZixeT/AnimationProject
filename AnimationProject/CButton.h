//
//  CButton.h
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CButton : UIButton
@property CGRect frame;
@property NSString *imageName;
- (void) addWidthConstraint: (CGFloat)sWidth;
- (void) addHeightConstraint: (CGFloat)sHeight;
- (void) addCenterXConstraint:(id)view;
- (void) addCenterYConstraint:(id)view;
- (void) printAllConstains;
- (void) removeAllConstraints;
- (void) removeConstratAtAttribute:(NSLayoutAttribute)attribute;
@end
