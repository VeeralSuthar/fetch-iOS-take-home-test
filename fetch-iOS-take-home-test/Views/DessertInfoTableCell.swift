//
//  DessertInfoTableCell.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/28/22.
//

import UIKit

class DessertInfoTableCell: UITableViewCell {

    
    
    var dessertInfo: DessertInfoViewModel! {
        didSet {
            textLabel?.text = dessertInfo.strMeal
            
            //            detailTextLabel?.text = courseViewModel.detailTextString
            //            accessoryType = courseViewModel.accessoryType
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        // cell customization
        textLabel?.font = UIFont.init(name: "Times New Roman", size: 18)
        textLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = UIFont.init(name: "Times New Roman", size: 18)
    }
    
    
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    

}
