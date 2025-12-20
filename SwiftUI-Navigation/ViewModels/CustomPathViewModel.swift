//
//  CustomPathViewModel.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-19.
//

import Foundation
import SwiftUI

class CustomPathViewModel: SharedViewModel {
    @Published var _paths: NavigationPath
    @Published var currentPath: String?
    
    var paths: NavigationPath {
        get { _paths }
        set { _paths = newValue }
    }
    
    override init(employees: [Employee], departments: [Department]) {
        self._paths = NavigationPath()
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
