//
//  CustomView.h
//  FingerPaint
//
//  Created by KevinT on 2018-02-23.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (nonatomic, strong) UIColor *strokeColor;

- (void)startDrawingAtPoint:(CGPoint)point;
- (void)drawToLocationOfTouchAtPoint:(CGPoint)point;
- (void)finishDrawing;
- (void)enterColor:(UIColor *)color;

@end
