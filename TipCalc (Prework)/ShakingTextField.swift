//
//  ShakingTextField.swift
//  TipCalc (Prework)
//
//  Created by Jimmy Trinh on 1/6/21.
//

import UIKit

class ShakingTextField: UITextField {

    func shake () {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
    
        self.layer.add(animation, forKey: "position")
    }

}
