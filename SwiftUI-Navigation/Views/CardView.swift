//
//  CardView.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-11.
//

import SwiftUI

struct CardView: View {
    @State var description: String?
    
    var body: some View {
        VStack(spacing: 20) {
            if let description {
                Text(description)
                    .descriptionTextModifier()
            } else {
                Text("No description")
                    .descriptionTextModifier()
            }
        }
        .padding(20)
    }
}

#Preview("No description") {
    CardView()
}

#Preview("Description added") {
    CardView(description: "Hello, World!")
}
