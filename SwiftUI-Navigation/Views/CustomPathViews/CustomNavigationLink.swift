//
//  CustomNavigationLink.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-16.
//

import SwiftUI

struct CustomNavigationLink: View {
    
    var appendValue: AnyHashable
    var fullName: String
    
    @Binding var navPath: NavigationPath
    
    init<P>(fullName: String, navPath: Binding<NavigationPath>, value: P) where P : Decodable, P : Encodable, P : Hashable {
        self._navPath = navPath
        self.fullName = fullName
        self.appendValue = value
    }
    
    var body: some View {
        HStack(spacing: 16) {
            Text(fullName)
            Spacer()
            Button("Show", systemImage: "info.circle"){
                navPath.append(self.appendValue)
            }
        }
        .padding(20)
        .frame(maxHeight: 40)
        .background{
                RoundedRectangle(cornerRadius: 8)
                .fill(Color.gray.opacity(0.1))
                .stroke(Color.blue, lineWidth: 1)
        }
    }
}

#Preview {
    @Previewable @State var navPath = NavigationPath()
    let fName = "Dmytro Maksiutenko"
    
    CustomNavigationLink(fullName: fName, navPath: $navPath, value: "id")
}
