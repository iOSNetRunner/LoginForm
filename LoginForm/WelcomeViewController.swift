//
//  WelcomeViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var wavingHandLabel: UILabel!
    
    var usernameWelcome: String!
    
    private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundGradient()
        usernameLabel.text = usernameWelcome
    }
    
    override func viewWillLayoutSubviews() {
        gradientLayer.frame = backgroundView.bounds
        
        UIView.animate(withDuration: 1.0, animations: ({
            self.wavingHandLabel.transform = CGAffineTransform(rotationAngle: 0.4)
            }))
    }
    //MARK: - IBActions
    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
}

//MARK: - BackgroundSettings
extension WelcomeViewController {
    private func setBackgroundGradient() {
        gradientLayer.colors = [UIColor.systemYellow.cgColor,
                                UIColor.black.cgColor]
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
