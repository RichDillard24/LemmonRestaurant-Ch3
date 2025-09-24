//
//  DessertView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/20/25.
//

import SwiftUI

struct DessertView: View {
    let dessertMenuItem = [
        DessertItem(name:"New York Cheesecake",description: "Rich and creamy New York style cheesecake.", price:  6.99),
        DessertItem(name:"Chocolate Lava Cakes",description: "Individual molten chocolate cakes with a gooey center.", price: 5.49),
        DessertItem(name:"Fresh Fruit Tart",description: "A buttery pastry crust filled with a sweet mixture of seasonal fruits.", price: 4.99),
        DessertItem(name:"Cherry pie",description:"Fresh cherries locally sourced",price: 4.49),
    ]
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                Text("Todays Dessert Menu!")
                    .font(.title)
            }
            
            }
            List(dessertMenuItem){dessert in
                Text(dessert.name)
                
                Text(String(dessert.price))
                
}
            .padding()
        }
    }

    

           /* List{
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
*/
         /*   #Preview {
                DessertView()
          }
*/
