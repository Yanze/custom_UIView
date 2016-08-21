//
//  ViewController.m
//  custom_view
//
//  Created by yanze on 8/20/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *colorSlider;
@property (weak, nonatomic) IBOutlet UISlider *redColorSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenColorSlider;

@property (weak, nonatomic) IBOutlet CircleView *circleView;
@property (weak, nonatomic) IBOutlet CircleView *leftCircleView;
@property (weak, nonatomic) IBOutlet CircleView *rightCircleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorSlider:(id)sender {
    NSLog(@"%f", self.colorSlider.value);
    [self.circleView setStrokeColorWithBlue:self.colorSlider.value red:self.redColorSlider.value green:self.greenColorSlider.value];
    [self.leftCircleView setStrokeColorWithBlue:self.colorSlider.value red:self.redColorSlider.value green:self.greenColorSlider.value];
    [self.rightCircleView setStrokeColorWithBlue:self.colorSlider.value red:self.redColorSlider.value green:self.greenColorSlider.value];
}

@end
