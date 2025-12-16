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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    var vm = SharedViewModel(
        employees: employees,
        departments: departments
    )
    
    CustomPath(viewModel: vm)
}
