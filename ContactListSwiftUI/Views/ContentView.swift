//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Artemy Volkov on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersonsList()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
