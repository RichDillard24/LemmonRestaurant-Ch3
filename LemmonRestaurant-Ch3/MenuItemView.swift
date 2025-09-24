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
                
                Text(String(item.price))
                    .foregroundColor(Color.secondary)
            }
            Spacer()
            if item.price > 20 {
                HStack(){
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    
                    Text("Premium")
                        .font(.caption)
                }
                .font(.caption)
                .foregroundColor(.orange)
                .padding(6)
                .background(.orange.opacity(0.1))
                .cornerRadius(6)
            }
        }
    }
}

/*#Preview {
    MenuItemView()
}
*/
