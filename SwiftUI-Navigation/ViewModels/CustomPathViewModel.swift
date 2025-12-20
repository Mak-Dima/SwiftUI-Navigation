//
//  CustomPathViewModel.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-19.
//

import Foundation

class CustomPathViewModel: SharedViewModel {
    private var _paths: [String]
    
    @Published var currentPath: String?
    
    var paths: [String] {
        get { _paths }
        set { _paths = newValue }
    }
    
    override init(employees: [Employee], departments: [Department]) {
        self._paths = []
        super.init(employees: employees, departments: departments)
    }
    
    func appendPath(_ path: String) {
        _paths.append(path)
        print(_paths.count)
    }
    
    func deleteLastPath() {
        if !_paths.isEmpty { _paths.removeLast() }
        return
    }
}
