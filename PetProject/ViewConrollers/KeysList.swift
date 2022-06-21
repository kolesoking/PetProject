//
//  ViewController.swift
//  PetProject
//
//  Created by катя on 17.06.2022.
//

import UIKit

class KeysList: UITableViewController {
    
    var betaArray: [Keys] = [Keys(app: "asd", login: "asd", password: "asd")]

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
    
    @objc private func addNewKey() {
        showAlert(title: "ok", message: "asd")
    }
}

