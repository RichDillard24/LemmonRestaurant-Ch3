//
//  MenuItemView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/20/25.
//

import SwiftUI

struct MenuItemView: View {
    let item: MenuItem
    
    var body: some View {
        HStack(){
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text(item.description)
                    .font(.subheadline)
                Text(String(format:"%.2f",item.price))
                    .foregroundColor(Color.secondary)
            }
            Spacer()
            
            if item.price > 20 {
                PremiumBadge()
            }
        }
    }
} 

/*#Preview {
    MenuItemView()
}
*/
