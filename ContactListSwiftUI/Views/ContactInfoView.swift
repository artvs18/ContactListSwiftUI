//
//  ContactInfoView.swift
//  ContactListSwiftUI
//
//  Created by Artemy Volkov on 22.12.2022.
//

import SwiftUI

struct ContactInfoView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            .padding()
            
            PersonInfoView(person: person)
        }
        .navigationTitle(person.fullName)
        .listStyle(.grouped)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.getPersonsList()[0])
    }
}
