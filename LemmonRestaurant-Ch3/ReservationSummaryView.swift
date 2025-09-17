//
//  ReservationSummaryView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/15/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Binding var name: String
    @Binding var guest: Int
    @Binding var date: Date
    @Binding var allergies: String
    var body: some View {
        VStack(alignment:.leading, spacing: 10){
            Text("Reservation Summary").font(.title)
            Text("Name: \(name) ")
            Text("Number of guests: \(guest)")
            Text(" \(date)")
            Text("Allergies: \(allergies)")
        }
    }
}

//#Preview {
  //  ReservationSummaryView()
//}
