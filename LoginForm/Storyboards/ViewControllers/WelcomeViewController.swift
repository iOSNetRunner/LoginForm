//
//  WelcomeViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var wavingHandLabel: UILabel!
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - Life cycles methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradientWith()
        usernameLabel.text = "Welcome, \(user.username)!"
    }
    
    override func viewDidLayoutSubviews() {
        UIView.animate(withDuration: 1.2) {
            self.usernameLabel.alpha = 1
            self.wavingHandLabel.alpha = 1
            self.wavingHandLabel.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }
    }
}
