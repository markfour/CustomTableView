//
//  RandomColor.h
//  CustomTableView
//
//  Created by Markfour on 2021/02/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RandomColor : NSObject

+ (RandomColor *)shared;
- (UIColor *)color;

@end

NS_ASSUME_NONNULL_END
