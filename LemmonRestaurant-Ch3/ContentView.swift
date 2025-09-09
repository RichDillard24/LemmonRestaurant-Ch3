//
//  ContentView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, Cohort 3!")
                    .padding()
                NavigationLink(destination:AboutView ()) {
                    Text("About")
                        .foregroundStyle(.blue)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
