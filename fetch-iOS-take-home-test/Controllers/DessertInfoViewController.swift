//
//  DessertInfoViewController.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/28/22.
//

import UIKit

class DessertInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    var mealId: String = ""
    var infoViewModel = [DessertInfoViewModel]()
    let cellId = "cellId"
    var dessertName = ""
    var imageStr: String = ""
    var imageView = UIImageView()
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationBar()
        getData()
    }
    
    fileprivate func getData() {
        ApiHandler.handler.getDessertInfo(id:mealId) { (dessert, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self.infoViewModel = dessert?.map({return DessertInfoViewModel(dessertInfo: $0)}) ?? []
            //print(self.infoViewModel[0])
            self.tableView.reloadData()
            }
    }
    
    fileprivate func setupTableView() {
        
        imageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 250))
        imageView.contentMode = .scaleToFill
        view.addSubview(imageView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 250, width: self.view.frame.width, height: self.view.frame.height)
        tableView.register(DessertInfoTableCell.self, forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 20)
        tableView.separatorColor = .black
        tableView.backgroundColor = .white
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        tableView.tableFooterView = UIView()
        tableView.autoresizingMask = UIView.AutoresizingMask.flexibleHeight;
        view.addSubview(tableView)
    }
    
    fileprivate func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.sizeToFit()
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.backgroundColor = .lightGray
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = .lightGray
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        }
    
    
    
    

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! DessertInfoTableCell
        cell.selectionStyle = .none
        if(!self.infoViewModel.isEmpty){
            navigationItem.title = infoViewModel[0].strMeal
            let info = self.infoViewModel[0]
            let indexPath = indexPath.row
            let urlString = URL(string: imageStr)!
            imageView.load(url: urlString)
            
            if (indexPath == 0) { cell.textLabel?.text = info.strInstructions }
            if (indexPath == 1 && info.strMeasure1 != nil && info.strIngredient1 != nil) { cell.textLabel?.text = info.strMeasure1! + " " + info.strIngredient1! }
            if (indexPath == 2 && info.strMeasure2 != nil && info.strIngredient2 != nil) { cell.textLabel?.text = info.strMeasure2! + " " + info.strIngredient2! }
            if (indexPath == 3 && info.strMeasure3 != nil && info.strIngredient3 != nil) { cell.textLabel?.text = info.strMeasure3! + " " + info.strIngredient3! }
            if (indexPath == 4 && info.strMeasure4 != nil && info.strIngredient4 != nil) { cell.textLabel?.text = info.strMeasure4! + " " + info.strIngredient4! }
            if (indexPath == 5 && info.strMeasure5 != nil && info.strIngredient5 != nil) { cell.textLabel?.text = info.strMeasure5! + " " + info.strIngredient5! }
            if (indexPath == 6 && info.strMeasure6 != nil && info.strIngredient6 != nil) { cell.textLabel?.text = info.strMeasure6! + " " + info.strIngredient6! }
            if (indexPath == 7 && info.strMeasure7 != nil && info.strIngredient7 != nil) { cell.textLabel?.text = info.strMeasure7! + " " + info.strIngredient7! }
            if (indexPath == 8 && info.strMeasure8 != nil && info.strIngredient8 != nil) { cell.textLabel?.text = info.strMeasure8! + " " + info.strIngredient8! }
            if (indexPath == 9 && info.strMeasure9 != nil && info.strIngredient9 != nil) { cell.textLabel?.text = info.strMeasure9! + " " + info.strIngredient9! }
            if (indexPath == 10 && info.strMeasure10 != nil && info.strIngredient10 != nil) { cell.textLabel?.text = info.strMeasure10! + " " + info.strIngredient10! }
            if (indexPath == 11 && info.strMeasure11 != nil && info.strIngredient11 != nil) { cell.textLabel?.text = info.strMeasure11! + " " + info.strIngredient11! }
            if (indexPath == 12 && info.strMeasure12 != nil && info.strIngredient12 != nil) { cell.textLabel?.text = info.strMeasure12! + " " + info.strIngredient12! }
            if (indexPath == 13 && info.strMeasure13 != nil && info.strIngredient13 != nil) { cell.textLabel?.text = info.strMeasure13! + " " + info.strIngredient13! }
            if (indexPath == 14 && info.strMeasure14 != nil && info.strIngredient14 != nil) { cell.textLabel?.text = info.strMeasure14! + " " + info.strIngredient14! }
            if (indexPath == 15 && info.strMeasure15 != nil && info.strIngredient15 != nil) { cell.textLabel?.text = info.strMeasure15! + " " + info.strIngredient15! }
            if (indexPath == 16 && info.strMeasure16 != nil && info.strIngredient16 != nil) { cell.textLabel?.text = info.strMeasure16! + " " + info.strIngredient16! }
            if (indexPath == 17 && info.strMeasure17 != nil && info.strIngredient17 != nil) { cell.textLabel?.text = info.strMeasure17! + " " + info.strIngredient17! }
            if (indexPath == 18 && info.strMeasure18 != nil && info.strIngredient18 != nil) { cell.textLabel?.text = info.strMeasure18! + " " + info.strIngredient18! }
            if (indexPath == 19 && info.strMeasure19 != nil && info.strIngredient19 != nil) { cell.textLabel?.text = info.strMeasure19! + " " + info.strIngredient19! }
            if (indexPath == 20 && info.strMeasure20 != nil && info.strIngredient20 != nil) { cell.textLabel?.text = info.strMeasure20! + " " + info.strIngredient20! }
        }
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.tableView {
            var frame = imageView.frame
            if scrollView.contentOffset.y == 0 {
                frame.origin.y = 0
                imageView.frame = frame
                tableView.frame.origin.y = 250
            }
            if scrollView.contentOffset.y < 0 {
                frame.origin.y = 0
                imageView.frame = frame
                tableView.frame.origin.y = 250
            }
            if scrollView.contentOffset.y > 0 {
                frame.origin.y = -scrollView.contentOffset.y
                imageView.frame = frame
                tableView.frame.origin.y = 0
            }
        }
    }
}
