//
//  ApiHandler.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/27/22.
//

import Foundation

class ApiHandler: NSObject {
    
    static let handler = ApiHandler()
    
    func getDessertList(completion: @escaping ([Dessert]?, Error?) -> ()) {
            let urlString = "https://www.themealdb.com/api/json/v1/1/filter.php?c=Dessert"
            guard let url = URL(string: urlString) else { return }
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(nil, error)
                    print("Failed to fetch dessert list:", error)
                    return
                }
                print("\nsuccessfully accessed ", urlString, "\n")
                guard let data = data else { return }
                do {
                    let dessertList = try JSONDecoder().decode(DessertList.self, from: data)
                    let dessert = dessertList.meals
                    DispatchQueue.main.async {
                        completion(dessert, nil)
                    }
                } catch let jsonError {
                    print("Failed to decode:", jsonError)
                }
                
                }.resume()
        }
    
    
    func getDessertInfo(id:String, completion: @escaping ([Info]?, Error?) -> ()) {
        let urlString = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(id)"
        print(urlString)
        guard let url = URL(string: urlString) else { return }
        print("\nsuccessfully accessed ", urlString, "\n")
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                print("Failed to get dessert info: ", error)
                return
            }
            
            guard let data = data else {return }
            
            do {
                let dessert = try JSONDecoder().decode(DessertInfo.self, from: data)
                let info = dessert.meals
                DispatchQueue.main.async {
                    completion(info, nil)
                }
            } catch let jsonError {
                print("Failed to decode:", jsonError)
            }
            }.resume()
    }
}
