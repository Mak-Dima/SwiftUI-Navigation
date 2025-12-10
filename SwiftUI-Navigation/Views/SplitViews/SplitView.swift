//
//  SplitView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-08.
//

import SwiftUI

struct SplitView: View {
    
    @State private var departmentId: Int?
    @State private var description: String?
    
    var body: some View {
        NavigationSplitView {
            List(departments, selection: $departmentId) { department in
                NavigationLink(department.name, value: department.id)
            }.navigationTitle("Departments")
        } content: {
            if let dId = departmentId {
                let emp = employees.filter({e in e.departmentId == dId})
                List(emp, selection: $description) { employee in
                    NavigationLink(employee.firstName, value: employee.description)
                }.navigationTitle("Content")
            }
        } detail: {
            
        }
    }
}

#Preview {
    SplitView()
}
