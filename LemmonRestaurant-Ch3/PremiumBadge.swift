//
//  PremiumBadge.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/24/25.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
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


#Preview {
    PremiumBadge()
}
