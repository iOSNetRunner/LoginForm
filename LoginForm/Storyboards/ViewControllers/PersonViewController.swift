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
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradientWith()
        userImage.layer.cornerRadius = userImage.frame.width / 2
        nameLabel.text = user.person.name
        lastnameLabel.text = user.person.lastname
        ageLabel.text = String(user.person.age)
        hobbiesLabel.text = user.person.hobbies
        countryLabel.text = user.person.country
        cityLabel.text = user.person.city
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.title = "\(user.person.name) \(user.person.lastname) bio"
        bioVC.bio = user.person.bio
    }
}
