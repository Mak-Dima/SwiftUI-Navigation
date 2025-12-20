//
//  SplitViewModel.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-11.
//

import Foundation
import SwiftUI

class SharedViewModel: ObservableObject {
    private var _employees: [Employee]
    private var _departments: [Department]
    

    @Published var _paths: NavigationPath
    @Published var selectedDepartmentId: Int?
    @Published var selectedDescription: String?
    
    init(employees: [Employee], departments: [Department] = []) {
        self._employees = employees
        self._departments = departments
        self._paths = .init()
    }

    var paths: NavigationPath {
        get { _paths }
        set { _paths = newValue }
    }
    
    var filterEmployeesByDepartmentID: [Employee] {
        if let id = self.selectedDepartmentId {
            return self._employees.filter { $0.departmentId == id }
        }
        return []
    }
    
    var employees: [Employee] {
        return self._employees
    }
    
    var departments: [Department] {
        return self._departments
    }
    
    func filterEmployeesByDepartmnetId(_ id: Int) -> [Employee] {
        return self._employees.filter { $0.departmentId == id }
    }
}
