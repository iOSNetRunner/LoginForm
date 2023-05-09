//
//  ViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()

    @IBOutlet var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundSettings()
    }
    
    override func viewWillLayoutSubviews() {
        gradientLayer.frame = backgroundView.bounds
    }
    
    private func backgroundSettings() {
        gradientLayer.colors = [
            UIColor.systemYellow.cgColor,
            UIColor.black.cgColor
        ]
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
    }
}

