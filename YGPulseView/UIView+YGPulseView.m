//
//  UIView+YGPulseView.m
//  YGPulseView
//
//  Created by YGeorge on 22/11/2016.
//  Copyright (c) 2016 YGeorge. All rights reserved.
//

#import "UIView+YGPulseView.h"

NSString *const YGPulseKey = @"YGPulseKey";

@implementation UIView (YGPulseView)

- (void)startPulseWithColor:(UIColor *)color {
    [self startPulseWithColor:color scaleFrom:1.2f to:1.4f frequency:1.0f opacity:0.7f];
}

- (void)startPulseWithColor:(UIColor *)color scaleFrom:(CGFloat)initialScale to:(CGFloat)finishScale frequency:(CGFloat)frequency opacity:(CGFloat)opacity {
    CALayer *externalBorder = [CALayer layer];
    externalBorder.frame = self.frame;
    externalBorder.cornerRadius = self.layer.cornerRadius;
    externalBorder.backgroundColor = color.CGColor;
    externalBorder.opacity = opacity;
    self.layer.masksToBounds = NO;
    [self.layer.superlayer insertSublayer:externalBorder below:self.layer];

    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animation.fromValue = @(initialScale);
    animation.toValue = @(finishScale);
    animation.duration = frequency;
    animation.autoreverses = YES;
    animation.repeatCount = INT32_MAX;

    [externalBorder addAnimation:animation forKey:YGPulseKey];
}

@end
