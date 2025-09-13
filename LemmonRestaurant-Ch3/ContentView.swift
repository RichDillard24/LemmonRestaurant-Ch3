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
                Image(systemName: "keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, Cohort 3!")
                    .padding()
                NavigationLink(destination:AboutView ()){
                        Text("About Us")
                            .foregroundStyle(.blue)
                }
                NavigationLink(destination:ReservationForm()){
                    Text("Make a Reservation")
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
