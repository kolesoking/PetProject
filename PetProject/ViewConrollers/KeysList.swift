//
//  ViewController.swift
//  PetProject
//
//  Created by катя on 17.06.2022.
//

import UIKit

class KeysList: UITableViewController {
    
    var betaArray: [Keys]!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        navigationController?.navigationBar.isHidden = false
        
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        
        setupNavigationBar()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        betaArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        var content = cell.defaultContentConfiguration()
        let key = betaArray[indexPath.row]

        content.text = key.app
        cell.contentConfiguration = content

        return cell
    }
    
    
    
    
//    private func setupNavigationBar() {
//        title = "NONE"
//        
//        navigationController?.navigationBar.prefersLargeTitles = true
//        
//        let navBarAppearance = UINavigationBarAppearance()
//        
//        navBarAppearance.backgroundColor = UIColor(
//            red: 10/255,
//            green: 15/255,
//            blue: 20/255,
//            alpha: 195/255
//        )
//        
//        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//        
//        navigationController?.navigationBar.standardAppearance = navBarAppearance
//        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
//        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 0.9999999404, blue: 0.9999999404, alpha: 1)
//    }


}

