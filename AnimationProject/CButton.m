//
//  CButton.m
//  AnimationProject
//
//  Created by Георгий Зубков on 24.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import "CButton.h"

@implementation CButton
-(void) awakeFromNib
{
    [super awakeFromNib];
    [self.layer setCornerRadius:10];
    self.frame=self.frame;
}
- (void) addWidthConstraint: (CGFloat)sWidth
{
    NSLayoutConstraint *width = [NSLayoutConstraint
                                 constraintWithItem:self
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                 toItem:nil
                                 attribute:NSLayoutAttributeWidth multiplier:1.0 constant:sWidth];
    [self addConstraint:width];
}
- (void) addHeightConstraint: (CGFloat)sHeight
{
    NSLayoutConstraint *height = [NSLayoutConstraint
                                  constraintWithItem:self
                                  attribute:NSLayoutAttributeHeight
                                  relatedBy:NSLayoutRelationEqual
                                  toItem:nil attribute:
                                  NSLayoutAttributeHeight
                                  multiplier:1.0 constant:sHeight];
    [self addConstraint:height];
}
- (void) addCenterXConstraint:(id)view
{
    NSLayoutConstraint *centerX = [NSLayoutConstraint
                                   constraintWithItem:self
                                   attribute:NSLayoutAttributeCenterX
                                   relatedBy:NSLayoutRelationEqual
                                   toItem:view
                                   attribute: NSLayoutAttributeCenterX
                                   multiplier:1.0 constant:0];
    [self addConstraint:centerX];
}
- (void) addCenterYConstraint:(id)view
{
    NSLayoutConstraint *centerY = [NSLayoutConstraint
                                   constraintWithItem:self
                                   attribute:NSLayoutAttributeCenterY
                                   relatedBy:NSLayoutRelationEqual
                                   toItem:view
                                   attribute: NSLayoutAttributeCenterY
                                   multiplier:1.0 constant:0];
    [self addConstraint:centerY];
}
- (void) removeAllConstraints
{
    [self removeConstraints:self.constraints];
}
- (void) removeConstratAtAttribute:(NSLayoutAttribute)attribute
{
    for (NSLayoutConstraint *constraint in self.constraints)
    {
        NSLayoutAttribute first=constraint.firstAttribute;
        NSLayoutAttribute second=constraint.secondAttribute;
        if(first==attribute)
        {
            [self removeConstraint:constraint];
        }
    }
}
- (void) printAllConstains
{
    for (NSLayoutConstraint *constraint in self.constraints)
    {
        NSLayoutAttribute first=constraint.firstAttribute;
        //NSLayoutAttribute second=constraint.secondAttribute;
        switch((NSInteger)first)
        {
            case NSLayoutAttributeWidth:
                NSLog(@"Constaint:Width");
                break;
            case NSLayoutAttributeHeight:
                NSLog(@"Constaint:Heigth");
                break;
            case NSLayoutAttributeCenterX:
                NSLog(@"Constaint:centerY");
                break;
            case NSLayoutAttributeCenterY:
                NSLog(@"Constaint:centerY");
                break;
        }
    }
    NSLog(@"--End--");
}
@end
