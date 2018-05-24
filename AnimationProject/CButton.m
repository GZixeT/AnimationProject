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
}
@end
