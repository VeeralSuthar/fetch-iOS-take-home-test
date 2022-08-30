//
//  DessertListTableViewController.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/27/22.
//

import UIKit

class DessertListTableViewController: UITableViewController {

    
    var dessertListVMs = [DessertListViewModel]()
    var cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
        getData()
    }
    
    
    fileprivate func getData() {
        ApiHandler.handler.getDessertList { (dessertList, error) in
            if let error = error {
                print("Could not retrieve Dessert List: ", error)
            }
            self.dessertListVMs = dessertList?.map( { return DessertListViewModel(dessert: $0)}) ?? []
            self.tableView.reloadData()
        }
    }
    
    fileprivate func setupTableView() {
        tableView.register(DessertListTableCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        tableView.separatorColor = .black
        tableView.backgroundColor = .white
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        tableView.tableFooterView = UIView()
    }
    
    fileprivate func setupNavigationBar() {
        navigationItem.title = "Dessert List"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.sizeToFit()
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.backgroundColor = .lightGray
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.barTintColor = .lightGray
    }
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dessertListVMs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! DessertListTableCell
        let dessertItem = dessertListVMs[indexPath.row]
        cell.dessertListViewModel = dessertItem
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dessertItem = dessertListVMs[indexPath.row]
        print(dessertItem.dessertName, ": ", dessertItem.dessertId)
        
        let dessertInfoViewController = DessertInfoViewController()
        dessertInfoViewController.mealId = dessertItem.dessertId
        dessertInfoViewController.imageStr = dessertItem.dessertImage
        navigationController?.pushViewController(dessertInfoViewController, animated: true)
        
    }
}
