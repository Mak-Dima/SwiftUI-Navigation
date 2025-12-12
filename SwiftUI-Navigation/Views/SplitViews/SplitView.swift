//
//  SplitView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-08.
//

import SwiftUI

struct SplitView: View {
    
    @StateObject var viewModel = SplitViewModel(employees: employees, departments: departments)
    
    var body: some View {
        NavigationSplitView {
            List(viewModel.departments, selection: $viewModel.selectedDepartmentId) { department in
                NavigationLink(department.name, value: department.id)
            }
            .navigationTitle("Departments")
        } content: {
            List(viewModel.filterEmployeesByDepartmentID, selection: $viewModel.selectedDescription) { employee in
                NavigationLink(employee.firstName, value: employee.description)
            }
            .navigationTitle("Content")
        } detail: {
            if let description = viewModel.selectedDescription {
                CardView(description: description)
            } else {
                CardView()
            }
        }
    }
}

#Preview {
    SplitView()
}
