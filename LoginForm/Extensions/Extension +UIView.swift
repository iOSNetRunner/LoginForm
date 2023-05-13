//
//  Extension +UIView.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 13.05.2023.
//

import UIKit

extension UIView {
    func setBackgroundToGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemYellow.cgColor,
                                UIColor.black.cgColor]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
