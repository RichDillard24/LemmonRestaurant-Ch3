//
//  LoginView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/13/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn:Bool
    @Binding var userName:String
    
    var body: some View {
        NavigationStack{
            VStack{
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
            TextField(" Enter your name",text:$userName )
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Log In"){
                print("Trying to Log in")
                
                if userName == "Richard"{
                    isLoggedIn = true
                
                }
            }
        }
            .navigationTitle("Login")
    }
}

//#Preview {
  // LoginView()
}
