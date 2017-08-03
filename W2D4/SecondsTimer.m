//
//  SecondsTimer.m
//  W2D4
//
//  Created by Sam Meech-Ward on 2017-08-03.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "SecondsTimer.h"

@implementation SecondsTimer

- (void)startTimer {
    [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        self.seconds += 1;
        
        NSLog(@"Seconds: %i", self.seconds);
    }];
}

@end
