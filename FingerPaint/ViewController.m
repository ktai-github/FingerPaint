//
//  ViewController.m
//  FingerPaint
//
//  Created by KevinT on 2018-02-23.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property CGRect originalFrame;
@property (strong, nonatomic) IBOutlet CustomView *customView;
@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;
@end

@implementation ViewController

- (IBAction)viewPanned:(UIPanGestureRecognizer *)gestureRecognizer {
//  UIBezierPath *aPath = [UIBezierPath bezierPath];

  CGPoint touchPoint = [gestureRecognizer locationInView:self.customView];
  switch (gestureRecognizer.state) {
    case UIGestureRecognizerStateBegan:
      [self.customView startDrawingAtPoint:touchPoint];
      break;
    
    case UIGestureRecognizerStateChanged: {
      [self.customView drawToLocationOfTouchAtPoint:touchPoint];
      break;
    }
    case UIGestureRecognizerStateEnded: {
//      self.blueBox.frame = self.originalFrame;
//      [self drawRect:self.blueBox.frame];
      [self.customView finishDrawing];
      
      break;
    }
    default:
      break;
  }
}

- (void)viewDidLoad {
  [super viewDidLoad];

}
- (IBAction)colorButtonTapped:(UIButton *)sender
{
//  self.customView = [[CustomView alloc] init];
  UIColor *selectedColor;
  
  switch (sender.tag) {
    case 0:
      selectedColor = [UIColor redColor];
      
      break;
      
    case 1:
      selectedColor = [UIColor blueColor];
      break;
      
    default:
      selectedColor = [UIColor greenColor];
      break;
  }
  [self.customView enterColor:selectedColor];
//  self.customView.strokeColor = selectedColor;
}

@end
