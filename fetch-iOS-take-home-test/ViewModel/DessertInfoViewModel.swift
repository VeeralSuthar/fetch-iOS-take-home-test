//
//  DessertInfoViewModel.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/27/22.
//

import Foundation


struct DessertInfoViewModel {
    
    let strInstructions: String
    let idMeal: String
    let strMeal: String
    let strDrinkAlternate: String?
    let strIngredient1 : String?
    let strIngredient2 : String?
    let strIngredient3 : String?
    let strIngredient4 : String?
    let strIngredient5 : String?
    let strIngredient6 : String?
    let strIngredient7 : String?
    let strIngredient8 : String?
    let strIngredient9 : String?
    let strIngredient10 : String?
    let strIngredient11 : String?
    let strIngredient12 : String?
    let strIngredient13 : String?
    let strIngredient14 : String?
    let strIngredient15 : String?
    let strIngredient16 : String?
    let strIngredient17 : String?
    let strIngredient18 : String?
    let strIngredient19 : String?
    let strIngredient20 : String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    let strImageSource: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?
    
    init(dessertInfo: Info) {
        self.strInstructions = dessertInfo.strInstructions
        self.strMeal = dessertInfo.strMeal
        self.idMeal = dessertInfo.idMeal
        self.strDrinkAlternate = dessertInfo.strDrinkAlternate?.convertEmptyToNil()
        self.dateModified = dessertInfo.dateModified?.convertEmptyToNil()
        self.strImageSource = dessertInfo.strImageSource?.convertEmptyToNil()
        self.strSource = dessertInfo.strSource?.convertEmptyToNil()
        self.strCreativeCommonsConfirmed = dessertInfo.strCreativeCommonsConfirmed?.convertEmptyToNil()
        self.strIngredient1 = dessertInfo.strIngredient1?.convertEmptyToNil()
        self.strIngredient2 = dessertInfo.strIngredient2?.convertEmptyToNil()
        self.strIngredient3 = dessertInfo.strIngredient3?.convertEmptyToNil()
        self.strIngredient4 = dessertInfo.strIngredient4?.convertEmptyToNil()
        self.strIngredient5 = dessertInfo.strIngredient5?.convertEmptyToNil()
        self.strIngredient6 = dessertInfo.strIngredient6?.convertEmptyToNil()
        self.strIngredient7 = dessertInfo.strIngredient7?.convertEmptyToNil()
        self.strIngredient8 = dessertInfo.strIngredient8?.convertEmptyToNil()
        self.strIngredient9 = dessertInfo.strIngredient9?.convertEmptyToNil()
        self.strIngredient10 = dessertInfo.strIngredient10?.convertEmptyToNil()
        self.strIngredient11 = dessertInfo.strIngredient11?.convertEmptyToNil()
        self.strIngredient12 = dessertInfo.strIngredient12?.convertEmptyToNil()
        self.strIngredient13 = dessertInfo.strIngredient13?.convertEmptyToNil()
        self.strIngredient14 = dessertInfo.strIngredient14?.convertEmptyToNil()
        self.strIngredient15 = dessertInfo.strIngredient15?.convertEmptyToNil()
        self.strIngredient16 = dessertInfo.strIngredient16?.convertEmptyToNil()
        self.strIngredient17 = dessertInfo.strIngredient17?.convertEmptyToNil()
        self.strIngredient18 = dessertInfo.strIngredient18?.convertEmptyToNil()
        self.strIngredient19 = dessertInfo.strIngredient19?.convertEmptyToNil()
        self.strIngredient20 = dessertInfo.strIngredient20?.convertEmptyToNil()
        self.strMeasure1 = dessertInfo.strMeasure1?.convertEmptyToNil()
        self.strMeasure2 = dessertInfo.strMeasure2?.convertEmptyToNil()
        self.strMeasure3 = dessertInfo.strMeasure3?.convertEmptyToNil()
        self.strMeasure4 = dessertInfo.strMeasure4?.convertEmptyToNil()
        self.strMeasure5 = dessertInfo.strMeasure5?.convertEmptyToNil()
        self.strMeasure6 = dessertInfo.strMeasure6?.convertEmptyToNil()
        self.strMeasure7 = dessertInfo.strMeasure7?.convertEmptyToNil()
        self.strMeasure8 = dessertInfo.strMeasure8?.convertEmptyToNil()
        self.strMeasure9 = dessertInfo.strMeasure9?.convertEmptyToNil()
        self.strMeasure10 = dessertInfo.strMeasure10?.convertEmptyToNil()
        self.strMeasure11 = dessertInfo.strMeasure11?.convertEmptyToNil()
        self.strMeasure12 = dessertInfo.strMeasure12?.convertEmptyToNil()
        self.strMeasure13 = dessertInfo.strMeasure13?.convertEmptyToNil()
        self.strMeasure14 = dessertInfo.strMeasure14?.convertEmptyToNil()
        self.strMeasure15 = dessertInfo.strMeasure15?.convertEmptyToNil()
        self.strMeasure16 = dessertInfo.strMeasure16?.convertEmptyToNil()
        self.strMeasure17 = dessertInfo.strMeasure17?.convertEmptyToNil()
        self.strMeasure18 = dessertInfo.strMeasure18?.convertEmptyToNil()
        self.strMeasure19 = dessertInfo.strMeasure19?.convertEmptyToNil()
        self.strMeasure20 = dessertInfo.strMeasure20?.convertEmptyToNil()
    }
    
}
