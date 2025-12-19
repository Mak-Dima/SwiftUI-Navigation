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
        NavigationStack {
            NavigationLink {
                
            } label: {
                Button("Departments") {
                    print("Departments")
                }
            }
            
            Button("Employees") {
                print("Employees")
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
