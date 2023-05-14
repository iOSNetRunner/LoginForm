//
//  WelcomeViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var wavingHandLabel: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradientWith()
        usernameLabel.text = user
    }
}
