//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Artemy Volkov on 22.12.2022.
//

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()

        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
            )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
