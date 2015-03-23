# Useful

My swift class combining some useful methods I like to use during development, and some stuff I find lost here and there.

##Documentation

###Static (class func)
```swift
executeAfterDelay(timeInSeconds: Double, closure: (() -> ())) -> Void
```
Pass a time in seconds and a closure and the closure will be executed after the time has passed.

```swift
measureTimeToExecuteClosure(closure: () -> ()) -> Void
```
Will print the time it took to execute the closure (not thread safe, I believe).

###Dinamic
```swift
randomColor() -> UIColor
```
Every time this method is called it'll return a diferent UIColor. 

#License
The MIT License (MIT)