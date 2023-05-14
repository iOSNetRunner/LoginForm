//
//  Extension + TextView.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 14.05.2023.
//

import UIKit

extension UITextView {
    func setShadowForTextView() {
        layer.shadowColor = UIColor.systemYellow.cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 0.2
        layer.shadowOffset = CGSize(width: 0.3, height: 0.3)
    }
}
