//
//  Employee.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-09.
//

import Foundation

struct Employee: Identifiable, Hashable {
    var id: Int
    var departmentId: Int
    var age: Int
    var firstName: String
    var lastName: String
    var description: String
}

let employees: [Employee] = [
    .init(id: 1, departmentId: 1, age: 30, firstName: "Dmytro", lastName: "Maksiutenko", description: "Description 1"),
    .init(id: 2, departmentId: 2, age: 25, firstName: "Anastasiia", lastName: "Kryvoruchko", description: "Description 2"),
    .init(id: 3, departmentId: 1, age: 28, firstName: "Oleksandr", lastName: "Prykhodko", description: "Description 3"),
    .init(id: 4, departmentId: 3, age: 32, firstName: "Valeria", lastName: "Kryvoruchko", description: "Description 4"),
    .init(id: 5, departmentId: 2, age: 27, firstName: "Yuriy", lastName: "Prykhodko", description: "Description 5"),
    .init(id: 6, departmentId: 3, age: 35, firstName: "Olga", lastName: "Maksiutenko", description: "Description 6"),
    .init(id: 7, departmentId: 1, age: 29, firstName: "Vitalii", lastName: "Kryvoruchko", description: "Description 7"),
    .init(id: 8, departmentId: 4, age: 31, firstName: "Yana", lastName: "Prykhodko", description: "Description 8"),
    .init(id: 9, departmentId: 4, age: 26, firstName: "Serhii", lastName: "Maksiutenko", description: "Description 9"),
]
