//
//  DepartmentsView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-15.
//

import SwiftUI

struct DepartmentsView: View {
    @ObservedObject var viewModel: SharedViewModel
    
    @Binding var path: NavigationPath
    
    var body: some View {
        List(viewModel.departments) { department in
            NavigationLink(department.name, value: department)
        }
        .navigationTitle("Departments")
    }
}
#Preview {
    @Previewable @State var path = NavigationPath()
    let vm = SharedViewModel(
        employees: employees,
        departments: departments
    )
    
    DepartmentsView(viewModel: vm, path: $path)
}
