//
//  Timer.h
//  W2D4
//
//  Created by Sam Meech-Ward on 2017-08-03.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SecondsTimer : NSObject

/// The number of seconds that have passed since the timer started.
@property (nonatomic, assign) int seconds;

@end
