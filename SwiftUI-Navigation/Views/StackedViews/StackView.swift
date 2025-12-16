//
//  StackView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-13.
//

import SwiftUI

struct StackView: View {
    @ObservedObject var viewModel: SharedViewModel
    
//    NavigationPath
//    A type-erased list of data representing the content of a navigation stack.
    @State private var path = NavigationPath()
    
    var body: some View {
/*
    NavigationStack
    A view that displays a root view and enables you to present additional views over the root view.

    You can add views to the top of the stack by clicking or tapping a NavigationLink,
    and remove views using built-in, platform-appropriate controls, like a Back button or a swipe gesture.

    navigationDestination(for:destination:)
    Associates a destination view with a presented data type for use within a navigation stack.

    By default, a navigation stack manages state to keep track of the views on the stack.
    However, your code can share control of the state by initializing the stack with a binding to a collection of data values that you create.
    Use NavigationPath list.
*/
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
