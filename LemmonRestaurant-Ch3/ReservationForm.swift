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
                Stepper("Number of guests: \(guestcount)", value: $guestcount, in: 1...5)
                
            Text("Your reservation is for \(resName) with \(guestcount) guests.")
            
            }
        }
        
    }
}

#Preview {
    ReservationForm()
}
