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
    
    private let user = "Jack"
    private let password = "qwe"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundToGradient()
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTF.text == user, passwordTF.text == password else {
            showAlert(withTitle: "ACCESS DENIED",
                      andMessage: "Wrong password or username.\n Please, try again! \n😛")
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func forgotInputData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Username reminder", andMessage: "Your username is \(user)!\n 🧐")
        : showAlert(withTitle: "Password reminder", andMessage: "Your password is \(password)!\n 🤔")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - UIAlertController

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if title == "ACCESS DENIED" {
            let closeAction = UIAlertAction(title: "Close", style: .destructive) { _ in
                self.passwordTF.text = "" }
            alert.addAction(closeAction)
        } else {
            let closeAction = UIAlertAction(title: "Close", style: .destructive)
            alert.addAction(closeAction)
        }
        present(alert, animated: true)
    }
}
