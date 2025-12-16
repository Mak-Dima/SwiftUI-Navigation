//
//  StackView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-13.
//

import SwiftUI

struct StackView: View {
    @ObservedObject var viewModel: SharedViewModel
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DepartmentsView(viewModel: viewModel, path: $path)
            .navigationDestination(for: Department.self) { department in
                EmployessView(viewModel: viewModel, path: $path, department: department)
            }
            .navigationDestination(for: Employee.self) { employee in
                CardView(description: employee.description)
            }
        }
    }
}

#Preview {
    let vm = SharedViewModel(
        employees: employees,
        departments: departments
    )
    
    StackView(viewModel: vm)
}
