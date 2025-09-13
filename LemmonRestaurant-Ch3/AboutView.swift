//
//  AboutView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/8/25.
//

import SwiftUI

struct AboutView: View {
    let userName = "Richard"
    @State var orders = 11
    @State var clientName = ""
    var body: some View {
        
        VStack {
            Text("Welcome \(userName) to Little Lemon!")
                .font(.title.bold())
                .italic()
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
            Text("You have order \(orders) times")
            Button("Order again"){
                orders += 1
            }
            Button( "reset"){
                orders = 0
            }
            TextField("Enter client name:", text: $clientName)
                .padding()
                .textFieldStyle(.roundedBorder)
            Text("Hi \(clientName)!")
        }
        .navigationTitle(Text("About Us"))
    }
}

#Preview {
    AboutView()
}
