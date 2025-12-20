//
//  CustomPathView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-19.
//

import SwiftUI

struct ComplexPathView: View {
    
    @StateObject var viewModel: SharedViewModel
    
    var body: some View {
        NavigationStack(path: $viewModel.paths) {
            List {
                NavigationLink("Departments", value: viewModel.departments)
                NavigationLink("Employees", value: viewModel.employees)
            }
            .navigationDestination(for: [Department].self) { department in
                DepartmentsView(viewModel: viewModel, path: $viewModel.paths)
                .navigationDestination(for: Department.self) { department in
                    EmployessView(
                        viewModel: viewModel,
                        path: $viewModel.paths,
                        department: department
                    )
                }
                .navigationDestination(for: Employee.self) { employee in
                    CardView(description: employee.description)
                    Button("Menu") {
                        viewModel.paths.removeLast(viewModel.paths.count)
                    }
                    Button("Employees") {
                        viewModel.paths.removeLast(viewModel.paths.count)
                        viewModel.paths.append(viewModel.employees)
                    }
                }
            }
            .navigationDestination(for: [Employee].self) { _ in
                List(viewModel.employees) { employee in
                    NavigationLink(employee.firstName, value: employee)
                }
                .navigationDestination(for: Employee.self) { employee in
                    CardView(description: employee.description)
                    Button("Menu") {
                        viewModel.paths.removeLast(viewModel.paths.count)
                    }
                    Button("Departments") {
                        viewModel.paths.removeLast(viewModel.paths.count)
                        viewModel.paths.append(viewModel.departments)
                    }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var vm = SharedViewModel(
        employees: employees,
        departments: departments
    )
    
    ComplexPathView(viewModel: vm)
}
