//
//  PersonViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 13.05.2023.
//

import UIKit

final class PersonViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    // MARK: - Public properties
    var user: User!
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.name) \(user.person.lastname)"
        userImage.image = UIImage(named: user.person.profileImage)
        view.setBackgroundToGradientWith()
        userImage.layer.cornerRadius = 30
        nameLabel.text = user.person.name
        lastnameLabel.text = user.person.lastname
        ageLabel.text = String(user.person.age)
        hobbiesLabel.text = user.person.hobbies
        countryLabel.text = user.person.country
        cityLabel.text = user.person.city
    }
    
    override func viewDidLayoutSubviews() {
        UIView.animate(withDuration: 1) {
            self.userImage.alpha = 1
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        //bioVC.title = "\(user.person.name) \(user.person.lastname) bio"
        bioVC.user = user
    }
}
