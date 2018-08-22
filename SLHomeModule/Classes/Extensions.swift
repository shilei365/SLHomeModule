//
//  Extensions.swift
//  acbp
//
//  Created by Lei.Shi on 07.08.18.
//  Copyright © 2018 Aperto. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addCustomGradient() {
        addGradient(startColor: UIColor.white, endColor: UIColor(red: 0.58, green: 0.79, blue: 0.85, alpha: 1.0))
    }
    
    func addHighlightedGradient() {
        addGradient(startColor:  UIColor(red:0.41, green:0.89, blue:0.96, alpha:1), endColor: UIColor(red:0.11, green:0.64, blue:0.7, alpha:1))
    }
    
    func addGradient(startColor: UIColor, endColor: UIColor, radius: CGFloat = 16) {
        self.layer.cornerRadius = radius
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.32, y: 1.24)
        gradient.cornerRadius = radius
        self.layer.addSublayer(gradient)
    }
    
    func addCustomShadow() {
        //        guard Helpers.isIphone5() == false else { return }
        //        guard Helpers.isIpad2() == false else { return }
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3.0)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 10.0
        clipsToBounds = false
        layer.masksToBounds = false
    }
}
