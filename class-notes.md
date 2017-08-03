# Communication Patterns

How objects can communicate.

Easiest way is to call methods directly

## Delegate

one to one connection

1. Created a new protocol in the delegator: Seconds Timer <SecondsTimerDelegate>
2. Create a new property on the delegator for any object that conforms to this protocol.
3. In the delegator (Seconds Timer) call the method on the delegate.
4. In the delegate (View Controller) conform to the new protocol.
5. Implement any protocol methods (`- (void)secondsTimer:(SecondsTimer *)timer didIncrementSeconds:(int)seconds`)
6. Set the delegator's delegate property to self from the delegate
`self.timer.delegate = self;`

## NSNotification Centre

Like TV or radio. 
You can choose to watch a tv channel, you can choose to receive notificaitons.

broadcast information

Passing data in a way that multiple objects can respond

## KVO

observing data on an object with it knowing.

Register to receive updates by spying on the object.

# User Input

## UIControl

buttons and sliders and things

UIViews that can respond to UIControlEvents

## UIGestureRecognizer

tapping, swiping, pressing, pinching, shaking

The gesture recognizer takes care of the gesture logic, notifies us when a gesture occurs.

