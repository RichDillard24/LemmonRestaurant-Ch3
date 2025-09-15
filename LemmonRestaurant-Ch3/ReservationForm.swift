//
//  ReservationForm.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/10/25.
//

import SwiftUI

struct ReservationForm: View {
    @State var resName = ""
    @State var guestcount = 1
    var body: some View {
        Form{
            Section(header: Text("Reservation Details")){
                TextField("Enter Name for reservation", text: $resName)
                
                if resName == "" {
                    Text("Enter user name")
                        .foregroundStyle(.red)
                }
                
                Stepper("Number of guests: \(guestcount)", value: $guestcount, in: 1...10)
                if guestcount >= 5 {
                    Text("We will contact you for details")
                        .foregroundStyle(.yellow)
                    
                }
                
                Text("Your reservation is for \(resName) with \(guestcount) guests.")
                }
            Button(action: {
                print("Reservation for \(resName) with \(guestcount) guests.")
            })
            {
                Text("Make Reservation")
            }
        }
    }
}

#Preview {
    ReservationForm()
}
