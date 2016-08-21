//
//  CircleView.h
//  custom_view
//
//  Created by yanze on 8/20/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

#import <UIKit/UIKit.h>
// appelle ce mot pour afficher le costom view dans interface builder 
IB_DESIGNABLE

@interface CircleView : UIView
@property (nonatomic, strong) IBInspectable UIColor *circleColor;

- (void) setStrokeColorWithBlue:(CGFloat)blue
                            red:(CGFloat)red
                          green:(CGFloat)green;

@end
