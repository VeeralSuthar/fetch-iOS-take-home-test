//
//  DessertListTableCell.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/25/22.
//

import UIKit

class DessertListTableCell: UITableViewCell {

    var dessertListViewModel : DessertListViewModel! {
        didSet {
            dessertLabel.text = dessertListViewModel.dessertName
            //dessertImageView.image = UIImage(named: dessertListViewModel.dessertImage)
            
        }
    }
    
    /*
    let dessertImageView:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        return img
    }()
     */
    
    let dessertLabel:UILabel = {
            let label = UILabel()
            label.font = UIFont.boldSystemFont(ofSize: 20)
            label.textColor =  .black
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         
        self.contentView.addSubview(dessertLabel)
        // Label
        dessertLabel.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
        dessertLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10).isActive = true
        dessertLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
     }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
