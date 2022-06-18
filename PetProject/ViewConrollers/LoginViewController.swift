//
//  LoginViewController.swift
//  PetProject
//
//  Created by катя on 17.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let users = User.addUsers()
    
    private lazy var loginTextField = settingTextField(
        placeHolder: "Login",
        borderStyle: .roundedRect
    )
    
    private lazy var passwordTextField = settingTextField(
        placeHolder: "Password",
        borderStyle: .roundedRect
    )
    
    private lazy var signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(
            red: 10/255,
            green: 15/255,
            blue: 20/255,
            alpha: 195/255
        )
        button.setTitle("Sign in", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(signIn), for: .touchUpInside)
        return button
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(white: 1, alpha: 0)
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(
            UIColor(
                red: 10/255,
                green: 15/255,
                blue: 20/255,
                alpha: 195/255
            ), for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        return button
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupSubviews(loginTextField, passwordTextField, signInButton, signUpButton)
        setConstreints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstreints() {
        
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: loginTextField, to: nil, top: 250, leading: 40, trailing: -40)
        
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: passwordTextField, to: loginTextField, top: 40, leading: 40, trailing: -40)
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: signInButton, to: passwordTextField, top: 40, leading: 40, trailing: -40)
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: signUpButton, to: signInButton, top: 20, leading: 40, trailing: -40)
    }
    
    @objc private func signIn() {
//        showAlert(title: "Hello", message: "World")
        for user in users {
            if loginTextField.text == user.login && passwordTextField.text == user.password {
                showAlert(title: "Hello", message: "Good")
            } //else {
                //showAlert(title: "Mb lol", message: "mda")
            //}
        }
    }
    
    @objc private func signUp() {
        print("OK")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginViewController {
    private func setConstreints(for view: UIView, to lastView: UIView?, top: CGFloat, leading: CGFloat, trailing: CGFloat) {
        
        if let lastView = lastView {
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: lastView.bottomAnchor, constant: top),
                view.leadingAnchor.constraint(equalTo: super.view.leadingAnchor, constant: leading),
                view.trailingAnchor.constraint(equalTo: super.view.trailingAnchor, constant: trailing)
            ])
        } else {
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: super.view.topAnchor, constant: top),
                view.leadingAnchor.constraint(equalTo: super.view.leadingAnchor, constant: leading),
                view.trailingAnchor.constraint(equalTo: super.view.trailingAnchor, constant: trailing)
            ])
        }
        
    }
    
    private func settingTextField(placeHolder: String, borderStyle: UITextField.BorderStyle) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeHolder
        textField.borderStyle = borderStyle
        return textField
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "ok", style: .default)
        alert.addTextField { textField in
            textField.placeholder = "Login"
        }
        alert.addTextField { textField in
            textField.placeholder = "Password"
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
