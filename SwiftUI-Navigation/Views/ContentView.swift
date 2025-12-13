//
//  ContentView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        @StateObject var sharedViewModel = SharedViewModel(
            employees: employees,
            departments: departments
        )
        
        //  TabView.
        //  A view that switches between multiple child views using interactive user interface elements.
        //  To create a user interface with tabs, place Tabs in a TabView.
        //
        //  Supports different view stiles and customization.
        //
        //  To programmatically select different tabs, use the init(selection:content:) initializer.
        //  You can assign a selection value to each tab using a Tab initializer that takes a value.
        TabView {
            
            //  Tab.
            //  The content for a tab and the tab’s associated tab item in a tab view.
            //  Can be created with label, system symbol and image.
            Tab("Split View", systemImage: "") {
                SplitView(viewModel: sharedViewModel)
            }
            Tab("Stack", systemImage: "") {}
            Tab("Path", systemImage: "") {}
        }
    }
}

#Preview {
    ContentView()
}
