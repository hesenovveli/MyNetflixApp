//
//  Extensions.swift
//  MyNetflixApp
//
//  Created by User on 05.09.24.
//

import Foundation


extension String {
    func capitalizeFirstLatter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
