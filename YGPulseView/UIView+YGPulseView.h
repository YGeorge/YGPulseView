//
//  UIView+YGPulseView.h
//  YGPulseView
//
//  Created by YGeorge on 22/11/2016.
//  Copyright (c) 2016 YGeorge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CAAnimation.h>

@interface UIView (YGPulseView)

- (void)startPulseWithColor:(UIColor *)color;

- (void)startPulseWithColor:(UIColor *)color scaleFrom:(CGFloat)initialScale to:(CGFloat)finishScale frequency:(CGFloat)frequency opacity:(CGFloat)opacity;

@end
