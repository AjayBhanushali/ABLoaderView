//
//  ABLoaderView.swift
//  ABLoaderView
//
//  Created by Ajay Bhanushali on 20/07/18.
//  Copyright © 2018 Aimpact. All rights reserved.
//

import Foundation
import UIKit

public class ABLoader {
    
    var backgroundColor: UIColor
    var gradientColor: UIColor
    
    public init() {
        if #available(iOS 13.0, *) {
            self.backgroundColor =  UIColor { (traitCollection: UITraitCollection) -> UIColor in
                switch traitCollection.userInterfaceStyle {
                case .dark:  return UIColor(white: 0.18, alpha: 1)
                case .light: return UIColor(white: 0.82, alpha: 1)
                default:     return UIColor(white: 0.82, alpha: 1)
                }
            }
            
            gradientColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
                switch traitCollection.userInterfaceStyle {
                case .dark:  return UIColor(white: 0.14, alpha: 1)
                case .light: return UIColor(white: 0.86, alpha: 1)
                default:     return UIColor(white: 0.86, alpha: 1)
                }
            }
        } else {
            self.backgroundColor = UIColor(white: 0.82, alpha: 1)
            self.gradientColor = UIColor(white: 0.86, alpha: 1)
        }
    }
    
    public init(background: UIColor, gradient: UIColor) {
        self.backgroundColor = background
        self.gradientColor = gradient
    }
    
    public func startShining(_ view: UIView) {
        view.layoutIfNeeded()
        animate(view: view, start: true)
    }
    
    public func stopShining(_ view: UIView) {
        animate(view: view, start: false)
    }
    
    public func startSmartShining(_ view: UIView) {
        addLoader(view, start: true)
    }
    
    public func stopSmartShining(_ view: UIView) {
        addLoader(view, start: false)
    }
    
    private func addLoader(_ view: UIView, start: Bool) {
        view.layoutIfNeeded()
        for subView in view.subviews {
            animate(view: subView, start: start)
        }
    }
    
    private func animate(view:UIView, start: Bool) {
        if start {
            // 1. Add Color Layer
            let colorLayer = CALayer()
            colorLayer.backgroundColor = backgroundColor.cgColor
            colorLayer.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
            colorLayer.name = "colorLayer"
            view.layer.addSublayer(colorLayer)
            view.autoresizesSubviews = true
            view.clipsToBounds = true
            
            // 2. Add loader Layer
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [backgroundColor.cgColor,
                                    gradientColor.cgColor,
                                    backgroundColor.cgColor]
            gradientLayer.locations = [0,0.4,0.8, 1]
            gradientLayer.name = "loaderLayer"
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
            gradientLayer.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
            view.layer.addSublayer(gradientLayer)
            
            // 3. Animate loader layer
            let animation = CABasicAnimation(keyPath: "transform.translation.x")
            animation.duration = 1.2
            animation.fromValue = -view.frame.width
            animation.toValue = view.frame.width
            animation.repeatCount = Float.infinity
            gradientLayer.add(animation, forKey: "smartLoader")
        } else {
            if let smartLayers = view.layer.sublayers?.filter({$0.name == "colorLayer" || $0.name == "loaderLayer"}) {
                smartLayers.forEach({$0.removeFromSuperlayer()})
            }
        }
    }
}
