//
//  Person.swift
//  PersonListApp
//
//  Created by Максим Жиляев on 21.11.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var title: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        [
            Person(name: DataStore.shared.names[0], surname: DataStore.shared.surnames[0], email: DataStore.shared.emails[0], phoneNumber: DataStore.shared.phoneNumbers[0]),
            Person(name: DataStore.shared.names[1], surname: DataStore.shared.surnames[1], email: DataStore.shared.emails[1], phoneNumber: DataStore.shared.phoneNumbers[1]),
            Person(name: DataStore.shared.names[2], surname: DataStore.shared.surnames[2], email: DataStore.shared.emails[2], phoneNumber: DataStore.shared.phoneNumbers[2]),
            Person(name: DataStore.shared.names[3], surname: DataStore.shared.surnames[3], email: DataStore.shared.emails[3], phoneNumber: DataStore.shared.phoneNumbers[3]),
            Person(name: DataStore.shared.names[4], surname: DataStore.shared.surnames[4], email: DataStore.shared.emails[4], phoneNumber: DataStore.shared.phoneNumbers[4]),
            Person(name: DataStore.shared.names[5], surname: DataStore.shared.surnames[5], email: DataStore.shared.emails[5], phoneNumber: DataStore.shared.phoneNumbers[5]),
            Person(name: DataStore.shared.names[6], surname: DataStore.shared.surnames[6], email: DataStore.shared.emails[6], phoneNumber: DataStore.shared.phoneNumbers[6]),
            Person(name: DataStore.shared.names[7], surname: DataStore.shared.surnames[7], email: DataStore.shared.emails[7], phoneNumber: DataStore.shared.phoneNumbers[7]),
            Person(name: DataStore.shared.names[8], surname: DataStore.shared.surnames[8], email: DataStore.shared.emails[8], phoneNumber: DataStore.shared.phoneNumbers[8]),
            Person(name: DataStore.shared.names[9], surname: DataStore.shared.surnames[9], email: DataStore.shared.emails[9], phoneNumber: DataStore.shared.phoneNumbers[9])
        ]
    }
}
