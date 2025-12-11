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
            if let depId = departmentId {
                let emp = employees.filter({e in e.departmentId == depId})
                List(emp, selection: $description) { employee in
                    NavigationLink(employee.firstName, value: employee.description)
                }.navigationTitle("Content")
            }
        } detail: {
            if let desc = description {
                Text(desc)
                    .padding(20)
                    .background{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.white)
                            .stroke(.blue, style: .init(lineWidth: 1))
                            .containerRelativeFrame(.horizontal, count: 10, spacing: 15)
                    }
                    .shadow(radius: 5)
            } else {
                Text("Default Detail")
            }
        }
    }
}

#Preview {
    SplitView()
}
