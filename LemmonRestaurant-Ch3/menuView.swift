//
//  menuView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/17/25.
//

import SwiftUI

struct menuView: View {
    
    let menuItems = [
        "New York Steak":38.99,
        "Grilled Salmon":32.00,
        "Chicken parmesan":24.50,
        "Vegetarian Chili":18.00,
        "Macaroni and Cheese":12.00,
        "Ceaser Salad":14.99,
    ]
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                Text("Today's Menu!")
                    .font(.title)
            }
            .padding()
            List{
                ForEach(menuItems.sorted(by: { $0.key < $1.key}), id: \.key){ (name,price) in
                    HStack{
                        VStack{
                            Text(name)
                                .font(.headline)
                            Text("$\(price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        if price > 20{
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.orange)
                                Text("Premium")
                                    .font(.caption)
                            }
                            .foregroundColor(.orange)
                            .padding(6)
                            .background(Color.yellow.opacity(0.2))
                            .cornerRadius(6)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    menuView()
}
