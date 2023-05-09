//
//  ViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit



final class LoginViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundSettings()
    }
    
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = backgroundView.bounds
    }
    
    
}

extension LoginViewController {
    
    func backgroundSettings() {
        gradientLayer.colors = [
            UIColor.systemYellow.cgColor,
            UIColor.black.cgColor
        ]
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
    }
}

