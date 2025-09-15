//
//  MainView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/13/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = false
    @State private var userName = ""
    
    var body: some View {
        NavigationView{
            if isLoggedIn == true {
                VStack{
                    Text("Welcome \(userName)")
                        .font(.title)
                    
                    NavigationLink("About us", destination: AboutView())
                    
                    Button("Logout") {
                        print("Log out")
                        isLoggedIn = false
                        userName = ""
                    }
                }
            }else {
                LoginView(isLoggedIn: $isLoggedIn, userName:$userName)
            }
        }
    }
}

#Preview {
    MainView()
}
