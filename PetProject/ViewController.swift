//
//  ViewController.swift
//  PetProject
//
//  Created by катя on 17.06.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    let betaArray = ["a", "b", "c"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        
        setupNavigationBar()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        betaArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        var content = cell.defaultContentConfiguration()

        content.text = betaArray[indexPath.row]
        cell.contentConfiguration = content

        return cell
    }
    
    
    private func setupNavigationBar() {
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
        
    }


}

