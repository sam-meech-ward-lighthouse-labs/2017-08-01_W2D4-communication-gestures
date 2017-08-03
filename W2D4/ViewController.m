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
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@property (nonatomic, strong) SecondsTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timer = [[SecondsTimer alloc] init];
    [self.timer startTimer];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(banana:) name:@"com.meech-ward.seconds-updated" object:nil];
}

- (void)banana:(NSNotification *)notification {
    SecondsTimer *timer = [notification object];
    NSLog(@"SEconds Updated %i", timer.seconds);
    self.timerLabel.text = [NSString stringWithFormat:@"%i", timer.seconds];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
