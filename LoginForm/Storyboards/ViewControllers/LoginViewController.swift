//
//  LoginViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit



final class LoginViewController: UIViewController {
    
    
    // MARK: - IBOutlets
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User(
        username: "Johnny",
        password: "qwe",
        person: User.getPerson()
    )
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradient()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTF.text == user.username, passwordTF.text == user.password else {
            showAlert(withTitle: "ACCESS DENIED",
                      andMessage: "Wrong password or username.\n Please, try again! \n😛",
                      textField: passwordTF
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.username
            } else if let navigationVC = viewController as? UINavigationController {
                guard let personVC = navigationVC.topViewController as? PersonViewController else { return }
                personVC.title = "\(user.person.name) \(user.person.lastname)"
                personVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func forgotInputData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Username reminder", andMessage: "Your username is \(user.username)!\n 🧐")
        : showAlert(withTitle: "Password reminder", andMessage: "Your password is \(user.password)!\n 🤔")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Close", style: .destructive) { _ in
            textField?.text = ""
        }
        alert.addAction(closeAction)
        present(alert, animated: true)
    }
}
