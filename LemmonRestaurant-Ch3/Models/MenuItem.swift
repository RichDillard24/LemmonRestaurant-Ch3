//
//  MenuItem.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/20/25.
//

import Foundation

struct MenuItem: Identifiable {
    var id:UUID = UUID()
    var name:String
    var description:String
    var price:Double
}
