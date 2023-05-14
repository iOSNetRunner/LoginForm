//
//  Extension +UIView.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 13.05.2023.
//

import UIKit

extension UIView {
    func setBackgroundToGradientWith(topColor: CGColor = UIColor.systemYellow.cgColor, endColor: CGColor = UIColor.black.cgColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor,
                                endColor]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
