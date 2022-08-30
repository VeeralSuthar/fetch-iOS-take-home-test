//
//  DessertListViewModel.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/27/22.
//

import Foundation


struct DessertListViewModel {
    
    let dessertName: String
    let dessertImage: String
    let dessertId: String
    
    init(dessert: Dessert) {
        self.dessertName = dessert.strMeal
        self.dessertId = dessert.idMeal
        self.dessertImage = dessert.strMealThumb
    }
}
