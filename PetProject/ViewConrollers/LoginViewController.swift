//
//  LoginViewController.swift
//  PetProject
//
//  Created by катя on 17.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let users: [User]? = nil
    
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
    
    
    // FIXME
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
        
        navigationController?.navigationBar.isHidden = true
        
        setupSubviews(loginTextField, passwordTextField, signInButton, signUpButton)
        addConstreints()
    }
    
    // FIXME
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        addConstreints()
        signInButton.setTitle("Sign in", for: .normal)
        signUpButton.isHidden = false
        
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func addConstreints() {
        
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: loginTextField, to: nil, top: 250, leading: 40, trailing: -40)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: passwordTextField, to: loginTextField, top: 30, leading: 40, trailing: -40)
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: signInButton, to: passwordTextField, top: 40, leading: 40, trailing: -40)
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        setConstreints(for: signUpButton, to: signInButton, top: 20, leading: 40, trailing: -40)
    }
    
    @objc private func signIn() {
        let keysListVS = KeysList()
        keysListVS.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        navigationController?.pushViewController(keysListVS, animated: true)
    }
    
    // FIXME
    @objc private func signUp() {
        if signUpButton.titleLabel?.text == "Sign Up" {
            signUpButton.isHidden = true
            signInButton.setTitle("Sign Up", for: .normal)
            showCoolAlert()
        } else {
            signIn()
        }
    }
}

extension LoginViewController {
    
    private func settingTextField(placeHolder: String, borderStyle: UITextField.BorderStyle) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeHolder
        textField.borderStyle = borderStyle
        return textField
    }
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            signIn()
        }
        
        return true
    }
}
