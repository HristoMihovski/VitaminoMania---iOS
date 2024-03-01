//
//  FruitModel.swift
//  Fruity
//
//  Created by Hristo on 2023-11-06.
//

import SwiftUI
import SwiftData

// MARK: -FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: String
    var content: String
    var co2: String
    var nutrition: [String]
}
