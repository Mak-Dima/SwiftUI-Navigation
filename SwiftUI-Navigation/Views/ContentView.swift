//
//  ContentView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Split View", systemImage: "") {SplitView()}
            Tab("Stack", systemImage: "") {}
            Tab("Path", systemImage: "") {}
        }
    }
}

#Preview {
    ContentView()
}
