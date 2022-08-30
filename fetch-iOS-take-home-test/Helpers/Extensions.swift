//
//  Extensions.swift
//  fetch-iOS-take-home-test
//
//  Created by Veeral Suthar on 8/27/22.
//

import Foundation
import UIKit




extension String {
    func convertEmptyToNil() -> String? {
        self.isEmpty ? nil : self
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
