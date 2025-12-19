//
//  CustomPathViewModel.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-19.
//

import Foundation

class CustomPathViewModel: ObservableObject {
    private var _employees: [Employee]
    private var _departments: [Department] = []

    init(employees: [Employee], departments: [Department]) {
        self._employees = employees
        self._departments = departments
    }
}
