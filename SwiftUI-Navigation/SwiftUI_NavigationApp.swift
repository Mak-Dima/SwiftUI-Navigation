//
//  SwiftUI_NavigationApp.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-08.
//

import SwiftUI

@main
struct SwiftUI_NavigationApp: App {
    
    init() {
        self._setTabBarAppearance()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension SwiftUI_NavigationApp {
    private func _setTabBarAppearance() {
        let tabBarAppearance = UITabBarAppearance()
        let fontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: .largeTitle)
        let font = UIFont(descriptor: fontDescriptor, size: 16)
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.label
        ]
        
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = attributes
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
}
