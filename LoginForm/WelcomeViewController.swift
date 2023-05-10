//
//  WelcomeViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet var usernameLabel: UILabel!
    
    var usernameWelcome: String!
    
    internal let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundSettings()
        usernameLabel.text = usernameWelcome
    }
    
    override func viewWillLayoutSubviews() {
        gradientLayer.frame = backgroundView.bounds
    }
    

    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
    
}

extension WelcomeViewController {
    private func backgroundSettings() {
        gradientLayer.colors = [
            UIColor.systemYellow.cgColor,
            UIColor.black.cgColor
        ]
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
