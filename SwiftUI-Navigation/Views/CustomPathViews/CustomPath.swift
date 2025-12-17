//
//  CustomPath.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-16.
//

import SwiftUI

struct CustomPath: View {
    @ObservedObject  var viewModel: SharedViewModel
    
    @State var navPath = NavigationPath()
    
    var body: some View {
        ForEach(viewModel.departments) { department in
            CustomNavigationLink(
                label: department.name,
                navPath: self.$navPath,
                value: department.id
            )
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    var vm = SharedViewModel(
        employees: employees,
        departments: departments
    )
    
    CustomPath(viewModel: vm)
}
