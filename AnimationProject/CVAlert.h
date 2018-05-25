//
//  CVAlert.h
//  AnimationProject
//
//  Created by Георгий Зубков on 25.05.2018.
//  Copyright © 2018 Георгий Зубков. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CVAlert : UIAlertController
- (void) addButton:(NSString*)title action:(void(^)(void))actions;
- (void) show:(BOOL)animated view:(UIViewController*)view;
@end
