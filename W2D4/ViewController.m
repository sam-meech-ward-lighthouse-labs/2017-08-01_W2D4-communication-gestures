//
//  ViewController.m
//  W2D4
//
//  Created by Sam Meech-Ward on 2017-08-03.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "SecondsTimer.h"

@interface ViewController () <SecondsTimerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (nonatomic, strong) SecondsTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timer = [[SecondsTimer alloc] init];
    self.timer.delegate = self;
    
    [self.timer startTimer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)secondsTimer:(SecondsTimer *)timer didIncrementSeconds:(int)seconds {
    self.timerLabel.text = [NSString stringWithFormat:@"%i", seconds];
}


@end
