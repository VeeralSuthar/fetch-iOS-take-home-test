//
//  Desserts.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/27/22.
//

import Foundation

struct DessertList: Codable {
    let meals: [Dessert]?
}

struct Dessert: Codable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}
