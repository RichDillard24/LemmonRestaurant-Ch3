//
//  CustomerView.swift
//  LemmonRestaurant-Ch3
//
//  Created by Richard Dillard on 9/24/25.
//

import SwiftUI

struct CustomerView: View {
    
    let customers = [
        Customer(name: "Richard" ,email:"richard@example.com", isPremium: true),
        Customer(name: "John",email:"john@example.com", isPremium: false),
        Customer(name: "Mary",email:"mary@example.com", isPremium: true),
        Customer(name: "David",email:"david@example.com", isPremium: false),
        Customer(name: "Lindsey",email:"lindsey@example.com", isPremium: true),
    ]
    @State  private var showPremium = false
   
    var filteredCustomer: [Customer] {
        showPremium ? customers.filter(\.isPremium) :customers
        
    }
    var body: some View {
        VStack {
            Text("Customer list")
            Toggle("Show Premium Users",isOn:$showPremium)
            List(filteredCustomer) { customer in
                HStack {
                    Text(customer.name)
                    Text(customer.email)
                        .foregroundStyle(.secondary)
                    Spacer()
                    if customer.isPremium {
                        Image(systemName:"star.fill")
                            .imageScale(.small)
                            .foregroundStyle(Color.yellow)
                    }
                }
            }
        }
    }
       
}

#Preview {
    CustomerView()
}
