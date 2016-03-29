//
//  FaceView.m
//  UIBezierPath
//
//  Created by WKY on 16/3/29.
//  Copyright © 2016年 WKY. All rights reserved.
//

#import "FaceView.h"

@implementation FaceView

- (instancetype)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor brownColor];
    }

    return self;
}

- (void)drawHead {

    UIBezierPath *pathHead = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(40, 120, 240, 240)];
    [pathHead setLineWidth:5.0];
    [pathHead stroke]; // 画出线条
}

- (void)drawEyes {

    UIBezierPath *pathEyes = [UIBezierPath bezierPath];
    // 左眼
    [pathEyes addArcWithCenter:CGPointMake(115, 190) radius:10 startAngle:0 endAngle:2*M_PI clockwise:YES];
    // 右眼
    [pathEyes moveToPoint:CGPointMake(215, 190)];
    [pathEyes addArcWithCenter:CGPointMake(205, 190) radius:10 startAngle:0 endAngle:2*M_PI clockwise:YES];
    [pathEyes setLineWidth:5.0];
    [pathEyes stroke];
}

- (void)drawSmile {

    UIBezierPath *pathSmile = [UIBezierPath bezierPath];
    [pathSmile moveToPoint:CGPointMake(100, 280)];
    [pathSmile addCurveToPoint:CGPointMake(220, 280) controlPoint1:CGPointMake(130, 330) controlPoint2:CGPointMake(190, 330)];
    [pathSmile setLineWidth:5.0];
    [pathSmile stroke];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    [[UIColor blueColor] set];
    [self drawHead];
    [self drawEyes];
    [self drawSmile];

}

@end
