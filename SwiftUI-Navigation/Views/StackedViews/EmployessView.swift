//
//  EmployessView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-15.
//

import SwiftUI

struct EmployessView: View {
    @ObservedObject var viewModel: SharedViewModel
    @Binding var path: NavigationPath
    
    let department: Department
    
    var body: some View {
        List(viewModel.filterEmployeesByDepartmnetId(department.id)) { employee in
            NavigationLink("\(employee.firstName) \(employee.lastName)", value: employee)
        }
        .navigationTitle("Employees")
    }
}

#Preview {
    @Previewable @State var path = NavigationPath()
    let vm = SharedViewModel(
        employees: employees,
        departments: departments
    )
    
    EmployessView(viewModel: vm, path: $path, department: departments[0])
}
