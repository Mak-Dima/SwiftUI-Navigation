//
//  SplitViewModel.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-11.
//

import Foundation

class SplitViewModel: ObservableObject {
    private var _employees: [Employee]
    private var _departments: [Department] = []
    
    @Published var selectedDepartmentId: Int?
    @Published var selectedDescription: String?
    
    init(employees: [Employee], departments: [Department] = []) {
        self._employees = employees
        self._departments = departments
    }

    var filterEmployeesByDepartmentID: [Employee] {
        if let id = self.selectedDepartmentId {
            return self._employees.filter { $0.departmentId == id }
        }
        return []
    }
    
    var departments: [Department] {
        return self._departments
    }
}
