//
//  BioViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 13.05.2023.
//

import UIKit

final class BioViewController: UIViewController {

    
    @IBOutlet var bioTextView: UITextView!
    
    var bio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradient()
        bioTextView.text = bio
        bioTextView.setShadowForTextView()
    }
    
   
}
