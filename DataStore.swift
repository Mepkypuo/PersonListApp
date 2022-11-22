//
//  DataStore.swift
//  PersonListApp
//
//  Created by Максим Жиляев on 22.11.2022.
//

class DataStore {
    static let shared = DataStore()
    
    let names = ["Steven", "Aaron", "Ted", "Sharon", "Carl", "Tim", "John", "Nicola", "Allan", "Bruce"].shuffled()
    let surnames = ["Pennyworth", "Murphy", "Isaacson", "Butler", "Dow", "Williams", "Smith", "Black", "Jankin", "Robertson"].shuffled()
    let emails = ["0001@mail.ru", "0002@mail.ru", "0003@mail.ru", "0004@mail.ru", "0005@mail.ru", "0006@mail.ru", "0007@mail.ru", "0008@mail.ru", "0009@mail.ru", "0010@mail.ru"].shuffled()
    let phoneNumbers = ["123123123", "234234234", "345345345", "456456456", "567567567", "678678678", "789789789", "890890890", "987987987", "654654654"].shuffled()
}

//let strings = DataStore.shared.strings
         
        
        
