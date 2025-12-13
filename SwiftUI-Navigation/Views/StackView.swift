//
//  StackView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-13.
//

import SwiftUI

struct StackView: View {
    @ObservedObject var viewModel: SharedViewModel
    
    var body: some View {
        NavigationStack {
            NavigationLink("Next") {
                
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
