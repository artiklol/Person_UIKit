//
//  DataManager.swift
//  Person_UIKit
//
//  Created by Artem Sulzhenko on 27.10.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron", "Tim", "Ted", "Steven",
        "Sharon", "Nicola", "Allan", "Bruce", "Carl"
    ]
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth", "Jankins",
        "Butler", "Black", "Robertson", "Murphy", "Williams"
    ]
    let emails = [
        "smith@gmail.com", "dow@gmail.com",
        "isaacson@gmail.com","pennyworth@gmail.com",
        "jankins@gmail.com", "butler@gmail.com",
        "black@gmail.com", "robertson@gmail.com",
        "murphy@gmail.com", "williams"
    ]
    let phoneNumbers = [
        "+375(44)000-00-00", "+375(44)111-11-11",
        "+375(44)222-22-22", "+375(44)333-33-33",
        "+375(44)444-44-44", "+375(44)555-55-55",
        "+375(44)666-66-66", "+375(44)777-77-77",
        "+375(44)888-88-88", "+375(44)999-99-99"
    ]
}
