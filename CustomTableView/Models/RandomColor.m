//
//  RandomColor.m
//  CustomTableView
//
//  Created by Markfour on 2021/02/14.
//

#import "RandomColor.h"

@implementation RandomColor

+ (RandomColor *)shared {
  static RandomColor *_instance;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _instance = [[RandomColor alloc]
                 initSharedInstance];
  });
  return _instance;
}

- (id)initSharedInstance {
  return [super init];
}

- (id)init {
  [self doesNotRecognizeSelector:_cmd];
  return nil;
}

- (UIColor *)color {
  int random = (int)arc4random_uniform(5);
  UIColor *color = [self colorFromRGB:(0x1abc9c)];

  switch (random) {
    case 0:
      break;
    case 1:
      color = [self colorFromRGB:(0x1abc9c)];
      break;

    case 2:
      color = [self colorFromRGB:(0x3498db)];
      break;

    case 3:
      color = [self colorFromRGB:(0xf1c40f)];
      break;

    case 4:
      color = [self colorFromRGB:(0x9b59b6)];
      break;

    default:
      break;
  }

  return color;
}

- (UIColor *)colorFromRGB:(NSInteger)rgbValue {
  return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0
                         green:((float)((rgbValue & 0xFF00) >> 8))/255.0
                          blue:((float)(rgbValue & 0xFF))/255.0
                         alpha:1.0];
}

@end
