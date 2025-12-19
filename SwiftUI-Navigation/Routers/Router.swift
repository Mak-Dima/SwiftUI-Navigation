//
//  Router.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-18.
//

import Foundation
import SwiftUI

protocol Router {
    func navigate(to: String)
}

struct Rout<T: View> {
    var view: T
    var identifier: String
}

class DefaultRouter: Router {
    private var routesList: [Rout<AnyView>] = []
    
    func navigate(to rout: String) -> NavigationLink<> {
        return NavigationLink {
            self.routesList.filter { $0.identifier == rout }.first?.view
        } label: {
            Text("")
        }
    }
}
