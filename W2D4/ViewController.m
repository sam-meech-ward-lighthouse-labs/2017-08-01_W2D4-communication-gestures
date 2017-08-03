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
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timer = [[SecondsTimer alloc] init];
    [self.timer startTimer];
    
    [self.timer addObserver:self forKeyPath:@"seconds" options:0 context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if ([keyPath isEqualToString:@"seconds"]) {
        self.timerLabel.text = [NSString stringWithFormat:@"%i", ((SecondsTimer *) object).seconds];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
