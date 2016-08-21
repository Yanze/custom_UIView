//
//  CircleView.m
//  custom_view
//
//  Created by yanze on 8/20/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

#import "CircleView.h"

@interface CircleView ()
@property (nonatomic, strong) UIColor *strokeColor;
@end


@implementation CircleView

// quand tu veux override the constructor avec tes propers codes quand l'app demarre 
-(instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        self.circleColor = [UIColor orangeColor];
        self.strokeColor = [UIColor blueColor];
    }
    return self;
}




- (void)drawRect:(CGRect)rect {
//    // define the cneter of the view
//    CGFloat rectX = self.frame.size.width / 2.0;
//    CGFloat rectY = self.frame.size.height / 2.0;
//    
//    CGFloat diameter = 100.0;
////    CGFloat circleWidth = 100.0;
////    CGFloat circleHeight = 100.0;
//    CGFloat topLeftX = rectX - (diameter / 2.0);
//    CGFloat topLeftY = rectY - (diameter / 2.0);
//    
//    // create a rectangle
//    CGRect circleRect = CGRectMake(topLeftX, topLeftY, diameter, diameter);
//    // define the circle path
//    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:circleRect];
//    // chose the brush color
//    [[UIColor whiteColor] set];
//    // draw path with color
//    [bezierPath fill];
    
    
    // remplir tout mon view
    CGFloat diameter = MIN(self.frame.size.width, self.frame.size.height);
    CGRect circleRect;
    CGFloat rectX = 0.0;
    CGFloat rectY = 0.0;
    
    if (self.frame.size.height < self.frame.size.width) {
        rectX = (self.frame.size.width - diameter) / 2.0;
    }
    else{
        rectY = (self.frame.size.height - diameter) / 2.0;
    }
    
    circleRect = CGRectMake(rectX, rectY, diameter, diameter);
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:circleRect];
    [self.circleColor set];
    [bezierPath fill];
    
    bezierPath.lineWidth = 5;
    [self.strokeColor set];
    [bezierPath stroke];
}

- (void) setStrokeColorWithBlue:(CGFloat)blue
                            red:(CGFloat)red
                          green:(CGFloat)green
{
    self.strokeColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    [self setNeedsDisplay];
}


@end
