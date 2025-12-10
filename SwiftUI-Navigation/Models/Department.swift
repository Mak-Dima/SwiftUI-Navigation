//
//  Department.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-09.
//

import Foundation

struct Department: Identifiable, Hashable {
    let id: Int
    let name: String
}

let departments: [Department] = [
    Department(id: 1, name: "Engineering"),
    Department(id: 2, name: "Sales"),
    Department(id: 3, name: "Operations"),
]
