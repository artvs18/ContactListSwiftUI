//
//  PersonInfoView.swift
//  ContactListSwiftUI
//
//  Created by Artemy Volkov on 23.12.2022.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text(person.phone)
            
            Spacer()
        }
        HStack {
            Image(systemName: "envelope")
                .foregroundColor(.blue)
            Text(person.email)
            
            Spacer()
        }
    }
}

struct PersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person.getPersonsList()[0])
    }
}
