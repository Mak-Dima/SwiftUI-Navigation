//
//  CustomPathView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-19.
//

import SwiftUI

struct CustomPathView: View {
    
    @StateObject var viewModel: CustomPathViewModel
    
    var body: some View {
        NavigationStack(path: $viewModel.paths) {
            NavigationLink {
                List(viewModel.departments) { department in
                   Text(department.name)
                }
            } label: {
                Text("Departments")
            }
            
        }
    }
}

#Preview {
    @Previewable @State var vm = CustomPathViewModel(
        employees: employees,
        departments: departments
    )
    
    CustomPathView(viewModel: vm)
}
