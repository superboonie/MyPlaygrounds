//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//: Animation Corner Radius

let view = UIView(frame: CGRectMake(0, 0, 200, 200))
view.backgroundColor = UIColor.redColor()

view

//XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
XCPlaygroundPage.currentPage.liveView = containerView
view.frame.origin.x = (CGRectGetWidth(containerView.bounds) - CGRectGetWidth(view.bounds)) * 0.5
view.frame.origin.y = (CGRectGetHeight(containerView.bounds) - CGRectGetHeight(view.bounds)) * 0.5
containerView.addSubview(view)

dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double(NSEC_PER_SEC))), dispatch_get_main_queue()) {
    print("Animating")
    let animation = CABasicAnimation(keyPath: "cornerRadius")
    animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    animation.fromValue = 0.0
    animation.toValue = 40
    animation.duration = 1.0
    view.layer.addAnimation(animation, forKey: "cornerRadius")
    view.layer.cornerRadius = 40
   
}

print("Done")
