//
//  CustomView.m
//  FingerPaint
//
//  Created by KevinT on 2018-02-23.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()

@property (nonatomic, strong) UIBezierPath *aPath;

@end

@implementation CustomView

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  self.aPath = [UIBezierPath bezierPath];
  self.strokeColor = [UIColor blueColor];

  return self;
}

- (void)drawRect:(CGRect)rect {
//  self.aPath = [[UIBezierPath alloc] init];
//  self.aPath = [UIBezierPath bezierPath];
  [self.strokeColor setStroke];
  
  [[UIColor redColor] setFill];
  
  
  // Set the starting point of the shape.
  
//  [self.aPath moveToPoint:CGPointMake(100.0, 0.0)];
  
  
  
  // Draw the lines.
  
//  [self.aPath addLineToPoint:CGPointMake(200.0, 40.0)];
//
//  [self.aPath addLineToPoint:CGPointMake(160, 140)];
//
//  [self.aPath addLineToPoint:CGPointMake(40.0, 140)];
//
//  [self.aPath addLineToPoint:CGPointMake(0.0, 40.0)];
//
//  [self.aPath closePath];
  
  [self.aPath stroke];
//  [self.aPath fill];

    // Drawing code
}

- (void)startDrawingAtPoint:(CGPoint)point
{
    self.aPath = [[UIBezierPath alloc] init];

  [self.aPath moveToPoint:point];
  [self setNeedsDisplay];
}

- (void)drawToLocationOfTouchAtPoint:(CGPoint)point
{
  [self.aPath addLineToPoint:point];
  [self setNeedsDisplay];
}

- (void)finishDrawing
{
//    [self.aPath closePath];
}

- (void)enterColor:(UIColor *)color {
  self.strokeColor = color;
}

@end
