//
//  FruitModel.swift
//  Fruity
//
//  Created by Festus Obi on 17/11/2021.
//

import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
