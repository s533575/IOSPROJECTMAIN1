//
//  SecondViewController.swift
//  IOSProject
//
//  Created by student on 2/24/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var restaurants = ["Burger King", "Mc Donalds", "Pizza Hut", "Dominos", "Sonic"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurant")!
        cell.textLabel?.text = restaurants[indexPath.row]
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

