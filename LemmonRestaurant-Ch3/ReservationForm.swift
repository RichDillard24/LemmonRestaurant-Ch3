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
    @State var allergyNotes = ""
    @State var showSummary = false
    @State var reservationDate = Date()
    var body: some View {
        NavigationStack{
            
            Form{
                Section(header: Text("Reservation Details")){
                    TextField("Enter Name for reservation", text: $resName)
                    
                    if resName.isEmpty {
                        Text("Enter user name")
                            .foregroundStyle(.red)
                    }
                    
                    Stepper("Number of guests: \(guestcount)", value: $guestcount, in: 1...10)
                    if guestcount >= 5 {
                        Text("We will contact you for details")
                            .foregroundStyle(.yellow)
                    }
                    DatePicker("Date", selection:$reservationDate,displayedComponents:[.date,.hourAndMinute])
                    
                    TextField("Allergy Notes",text: $allergyNotes)
                        
                        
                    Text("Your reservation is for \(resName) with \(guestcount) guests.")
                    
                    Button("Comfirm Reservation"){
                        if !resName.isEmpty {
                            showSummary=true
                        }
                    }
                    .disabled(resName.isEmpty)
                    .navigationDestination(isPresented: $showSummary){
                        ReservationSummaryView(name:$resName , guest:$guestcount, date:$reservationDate,allergies:$allergyNotes)
                    }
                }
            }
        }
    }
}


#Preview {
    ReservationForm()
}
