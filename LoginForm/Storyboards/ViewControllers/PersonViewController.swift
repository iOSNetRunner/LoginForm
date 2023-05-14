//
//  PersonViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 13.05.2023.
//

import UIKit

class PersonViewController: UIViewController {

    
    @IBOutlet var userImage: UIImageView!
    
    var user: User!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradient()
        userImage.layer.cornerRadius = userImage.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.title = "\(user.person.name) \(user.person.lastname) bio"
        bioVC.bio = user.person.bio
    }
    

}
