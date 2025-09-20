//
//  DessertView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/20/25.
//

import SwiftUI

struct DessertView: View {
    let menuItem = [
        "Chocolate Cake":5.75,
        "Apple Pie":4.25,
        "Cheesecake":6.75,
        "Tiramisu":7.25,
    ]
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                Text("Todays Dessert Menu!")
                    .font(.title)
            }
            .padding()
            List{
                ForEach(menuItem.sorted(by: {$0.key < $1.key}), id: \.key) { (name, price) in
                    HStack {
                        VStack{
                            Text(name)
                                .font(.headline)
                            Text("$\(price, specifier: "%.2f")")
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        if price < 7 {
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.green)
                                Text("Value")
                                    .font(.caption)
                            }
                            .foregroundColor(.green)
                            .padding(6)
                            .background(Color.green.opacity(0.2))
                            .cornerRadius(6)
                        }
                    }
                    
                }
            }
        }
      
    }
}

#Preview {
    DessertView()
}
