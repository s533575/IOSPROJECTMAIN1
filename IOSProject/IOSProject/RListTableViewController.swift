//
//  RListTableViewController.swift
//  IOSProject
//
//  Created by student on 2/24/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class RListTableViewController: UITableViewController, UISearchResultsUpdating {
    
    var filterRestaurant = [String]()
    var search : UISearchController!
    var results = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.results.tableView.dataSource = self
        self.results.tableView.delegate = self
        self.search = UISearchController(searchResultsController: self.results)
        self.tableView.tableHeaderView = self.search.searchBar
        self.search.searchResultsUpdater = self
        self.search.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        self.filterRestaurant = self.restaurants.filter{ (rest : String) -> Bool in
            if rest.contains(self.search.searchBar.text!)
            {
            return true
            }else{
                return false
            }
        }
        self.results.tableView.reloadData()
    }
    

var restaurants = ["Burger King", "Mc Donalds", "Pizza Hut", "Dominos", "Sonic", "Burger Queen"]

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView{
        return restaurants.count
        }
        else{
            return self.filterRestaurant.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if tableView == self.tableView
        {
        cell.textLabel?.text = restaurants[indexPath.row]
        }
        else
        {
            cell.textLabel?.text = self.filterRestaurant[indexPath.row]
        }
        return cell
    }

}
