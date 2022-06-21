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
}
