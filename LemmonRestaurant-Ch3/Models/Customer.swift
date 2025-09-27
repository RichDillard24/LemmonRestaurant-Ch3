//
//  Customer.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/24/25.
//

import Foundation

struct Customer:Identifiable {
    let id = UUID()
    var name: String
    var email: String
    var isPremium: Bool
}
