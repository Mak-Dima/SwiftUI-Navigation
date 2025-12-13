//
//  SplitView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-08.
//

import SwiftUI

struct SplitView: View {
    
    @ObservedObject var viewModel: SharedViewModel
    
    var body: some View {
        
        //  NavigationSplitView
        //  A view that presents views in two or three columns,
        //  where selections in leading columns control presentations in subsequent columns.
        //
        //  By creating a State value of type NavigationSplitViewVisibility
        //  you can programmatically control the visibility of navigation split view columns
        //
        //  To specify a preferred column width in a navigation split view, use the navigationSplitViewColumnWidth(_:) modifier.
        //  To set minimum, maximum, and ideal sizes for a column, use navigationSplitViewColumnWidth(min:ideal:max:).
        //  You can specify a different modifier in each column. The navigation split view does its best to accommodate the preferences that you specify,
        //  but might make adjustments based on other constraints.
        //
        //  To specify how columns in a navigation split view interact, use the navigationSplitViewStyle(_:) modifier
        //  with a NavigationSplitViewStyle value. For example,
        //  you can specify whether to emphasize the detail column or to give all of the columns equal prominence.
        NavigationSplitView {
            List(viewModel.departments, selection: $viewModel.selectedDepartmentId) { department in
                NavigationLink(department.name, value: department.id)
            }
            .navigationTitle("Departments")
            
        } content: {
            List(viewModel.filterEmployeesByDepartmentID, selection: $viewModel.selectedDescription) { employee in
                NavigationLink(employee.firstName, value: employee.description)
            }
            .navigationTitle("Content")
            
        } detail: {
            if let description = viewModel.selectedDescription {
                CardView(description: description)
            } else {
                CardView()
            }
        }
    }
}

#Preview {
    let vm = SharedViewModel(
        employees: employees,
        departments: departments
    )
    
    SplitView(viewModel: vm)
}
