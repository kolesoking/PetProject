//
//  Extesion + UIViewController.swift
//  PetProject
//
//  Created by катя on 21.06.2022.
//

import UIKit

extension UIViewController {
    
    func setupNavigationBar() {
        title = "NONE"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.backgroundColor = UIColor(
            red: 10/255,
            green: 15/255,
            blue: 20/255,
            alpha: 195/255
        )
        
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 0.9999999404, alpha: 1)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addNewKey)
        )
    }
    
    func setConstreints(for view: UIView, to lastView: UIView?, top: CGFloat, leading: CGFloat, trailing: CGFloat) {
        
        if let lastView = lastView {
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: lastView.bottomAnchor, constant: top),
                view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: leading),
                view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: trailing)
            ])
        } else {
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: self.view.topAnchor, constant: top),
                view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: leading),
                view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: trailing)
            ])
        }
    }
    
    // MARK: - Переделать
    func showAlert(title: String, message: String) {
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
    
    // MARK: - Переделать
    
    func showCoolAlert() {
        let alert = UIAlertController(
            title: "Cool!",
            message: "Registration completed successfully",
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.showAlert(title: "as", message: "asd")
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    // переделать
    @objc private func addNewKey() {
        showAlert(title: "ok", message: "asd")
    }
}
