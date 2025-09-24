//
//  menuView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/17/25.
//

import SwiftUI

struct menuView: View {
    /*
    let menuItems = [
        "New York Steak":38.99,
        "Grilled Salmon":32.00,
        "Chicken parmesan":24.50,
        "Vegetarian Chili":18.00,
        "Macaroni and Cheese":12.00,
        "Ceaser Salad":14.99,
    ]
    */
    let menuItems = [
        MenuItem(name: "New York Steak",description: "A juicy 2oz filet mignon", price: 38.99),
        MenuItem(name: "Grilled Salmon",description: "Fresh salmon fillet grilled to perfection", price: 32.00),
        MenuItem(name: "Chicken parmesan",description: "Breaded chicken topped with marinara sauce and melted mozzarella cheese", price: 24.50),
        MenuItem(name: "Vegetarian Chili",description: "A hearty mix of beans, tomatoes, and spices", price: 18.00),
        MenuItem(name: "Macaroni and Cheese",description: "Creamy Guda cheese", price: 12.00),
        
    ]
    @State private var showDesserts: Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu!")
                    .font(.title)
            }
        }
        Button("View Desserts") {
            showDesserts.toggle()
        }
            .padding()
            .background(Color.green)
            .opacity(0.5)
            .cornerRadius(10)
            
        List(menuItems){ item in
            MenuItemView(item: item)
        }
        .sheet(isPresented: $showDesserts) {
                            DessertView()
                        }
         //            List{
//                ForEach(menuItems.sorted(by: { $0.key < $1.key}), id: \.key){ (name,price) in
//                    HStack{
//                        VStack{
//                            Text(name)
//                                .font(.headline)
//                            Text("$\(price, specifier: "%.2f")")
//                                .foregroundColor(.secondary)
//                        }
//                        Spacer()
//                        if price > 20{
//                            HStack{
//                                Image(systemName: "star.fill")
//                                    .foregroundColor(.orange)
//                                Text("Premium")
//                                    .font(.caption)
//                            }
//                            .foregroundColor(.orange)
//                            .padding(6)
//                            .background(Color.yellow.opacity(0.2))
//                            .cornerRadius(6)
//                        }
//                        
//                    }
//                }
//            }
        }
    }


#Preview {
    menuView()
}
