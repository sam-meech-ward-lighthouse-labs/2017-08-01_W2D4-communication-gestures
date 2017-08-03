//
//  ViewController.m
//  W2D4
//
//  Created by Sam Meech-Ward on 2017-08-03.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "SecondsTimer.h"

@interface ViewController ()

@property (nonatomic, strong) SecondsTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonAction:(id)sender {
    
    NSLog(@"touched");
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    NSLog(@"slider value changed: %f", sender.value);
}

- (IBAction)viewTapped:(UITapGestureRecognizer *)sender {
    
    NSLog(@"background tapped %@", NSStringFromCGPoint([sender locationOfTouch:0 inView:sender.view]));
}

- (IBAction)panning:(UIPanGestureRecognizer *)sender {
    
    CGPoint translation = [sender translationInView:sender.view.superview];
    
    NSLog(@"%@", NSStringFromCGPoint(translation));
    
    sender.view.center = CGPointMake(sender.view.center.x + translation.x, sender.view.center.y + translation.y);
    
    [sender setTranslation:CGPointMake(0, 0) inView:sender.view.superview];
}


@end
