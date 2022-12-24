//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Artemy Volkov on 22.12.2022.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "envelope")
                }
            }
        }
        .navigationTitle("Contact List")
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getPersonsList())
    }
}
