//
//  ValueBadge.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/24/25.
//

import SwiftUI

struct ValueBadge: View {
    var body: some View {
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

#Preview {
    ValueBadge()
}
