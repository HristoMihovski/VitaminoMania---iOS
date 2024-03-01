//
//  FruitLocalStorage.swift
//  Fruity
//
//  Created by Hristo on 15.11.23.
//

import Foundation
import Combine
import SwiftData

var fruits: [Fruit] = fruitsData

class LocalStorage: ObservableObject {
    @Published var season: String {
        didSet {
            UserDefaults.standard.set(season, forKey: "spring")
            UserDefaults.standard.set(season, forKey: "summer")
            UserDefaults.standard.set(season, forKey: "autumn")
            UserDefaults.standard.set(season, forKey: "winter")
        }
    }
    
    @Published var spring: String {
        didSet {
            UserDefaults.standard.set(spring, forKey: "Spring")
        }
    }
    @Published var summer: String {
        didSet {
            UserDefaults.standard.set(summer, forKey: "Summer")
        }
    }
    @Published var autumn: String {
        didSet {
            UserDefaults.standard.set(autumn, forKey: "Autumn")
        }
    }
    @Published var winter: String {
        didSet {
            UserDefaults.standard.set(winter, forKey: "Winter")
        }
    }

    init() {
        season = UserDefaults.standard.object(forKey: "season") as? String ?? ""
        spring = UserDefaults.standard.object(forKey: "fruits") as? String ?? ""
        summer = UserDefaults.standard.object(forKey: "fruits") as? String ?? ""
        autumn = UserDefaults.standard.object(forKey: "fruits") as? String ?? ""
        winter = UserDefaults.standard.object(forKey: "fruits") as? String ?? ""
    }
}
