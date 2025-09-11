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
                .font(.system(size: 30, weight: .heavy))
                .italic(true)
                .padding(.bottom,45)
            Image("littleLemonLogo")
                .scaledToFit()
                .imageScale(.medium)
                .padding(.bottom, 20)
                .overlay{
                    Image("littleLemonLogo")
                        .scaledToFit()
                        .imageScale(.medium)
                        .frame(width: 20, height: 20)
                        .blur(radius: 5)
                }
            }
        .navigationTitle(Text("About Us"))
    }
}

#Preview {
    AboutView()
}
