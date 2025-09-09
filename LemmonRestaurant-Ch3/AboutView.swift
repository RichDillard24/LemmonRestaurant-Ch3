//
//  AboutView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/8/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("Welcome to Little Lemon!")
                .font(.title)
                .padding(.bottom)
            Image("littleLemonLogo")
                .scaledToFit()
                .imageScale(.medium)
        }
    }
}

#Preview {
    AboutView()
}
