//
//  BioViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 13.05.2023.
//

import UIKit

final class BioViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var bioTextView: UITextView!
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradientWith()
        title = "\(user.person.name) \(user.person.lastname) bio"
        bioTextView.text = user.person.bio
        bioTextView.setShadowForTextView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 1) {
            self.bioTextView.alpha = 1
        }
    }
}
