//
//  ViewController.swift
//  QuickTableView
//
//  Created by Leah Pope on 5/6/20.
//  Copyright © 2020 lsp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    let animals = ["Cat", "Dog", "Bird","Lizard", "Hamster", "Gecko", "Snake", "Chicken", "Turtle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - TABLE VIEW DELEGATE AND DATA SOURCE 
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }
}

