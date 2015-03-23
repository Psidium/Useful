//
//  PsidiumUseful.swift
//  Empiricus
//
//  Created by Psidium on 6/10/14.
//  Copyright (c) 2014 Empiricus. All rights reserved.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Psidium
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//




import UIKit


final class PsidiumUseful {
    
    class func executeAdterDelay(timeInSeconds: Double, closure: (() -> ())) -> Void {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(timeInSeconds * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    class func measureTimeToExecuteClosure(closure: () -> ()) -> Void {
        let timeNow = NSDate()
        closure()
        println("It took \(0 - timeNow.timeIntervalSinceNow) seconds to execute the closure.")
    }
    
    private var color = Int()
    func randomColor() -> UIColor {
        let newColor = Int(arc4random_uniform(11))
        if (newColor == color) {
            color++
        } else {
            color = newColor
        }
        switch (color) {
        case 0:
            return UIColor.redColor()
        case 1:
            return UIColor.blueColor()
        case 2:
            return UIColor.greenColor()
        case 3:
            return UIColor.grayColor()
        case 4:
            return UIColor.brownColor()
        case 5:
            return UIColor.purpleColor()
        case 6:
            return UIColor.orangeColor()
        case 7:
            return UIColor.magentaColor()
        case 8:
            return UIColor.yellowColor()
        case 9:
            return UIColor.cyanColor()
        case 10:
            return UIColor.darkGrayColor()
        case 11:
            return UIColor.lightGrayColor()
        default:
            return UIColor.blackColor()
        }
    }
    
}
