//
//  SecondsTimer.h
//  W2D4
//
//  Created by Sam Meech-Ward on 2017-08-03.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SecondsTimerDelegate;

@interface SecondsTimer : NSObject

/// The number of seconds that have passed since the timer started.
@property (nonatomic, assign) int seconds;

- (void)startTimer;

@property (nonatomic, weak) id<SecondsTimerDelegate> delegate;

@end

@protocol SecondsTimerDelegate <NSObject>

- (void)secondsTimer:(SecondsTimer *)timer didIncrementSeconds:(int)seconds;

@end

