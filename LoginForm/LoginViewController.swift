//
//  LoginViewController.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 09.05.2023.
//

import UIKit



final class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundGradient()
    }
    
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = backgroundView.bounds
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTF.text == "Jack", passwordTF.text == "qwe" else {
            showAlert(withTitle: "ACCESS DENIED",
                      andMessage: "Wrong password or username.\n Please, try again! \n😛")
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.usernameWelcome = usernameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func forgotUsernameTapped() {
        showAlert(withTitle: "Username reminder",
                  andMessage: "Your username is Jack!\n 🧐")
    }
    
    @IBAction func forgotPassTapped() {
        showAlert(withTitle: "Password reminder",
                  andMessage: "Your password is qwe!\n 🤔")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - BackgroundSettings & UIAlertController
extension LoginViewController {
    
    private func setBackgroundGradient() {
        gradientLayer.colors = [UIColor.systemYellow.cgColor,
                                UIColor.black.cgColor]
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
    }
    
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
