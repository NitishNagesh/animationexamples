//
//  shakingcontroller.swift
//  animationexamples
//
//  Created by nitish nayak n on 11/10/18.
//  Copyright © 2018 nitish nayak n. All rights reserved.
//

import UIKit

class shakingcontroller: UITextField {

    func shake () {
        let animation = CABasicAnimation(keyPath: "position")
        animation.repeatCount = 5
        animation.duration = 0.05
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x:self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x:self.center.x+4, y: self.center.y))
        self.layer.add(animation, forKey: "position")
        

}
}
