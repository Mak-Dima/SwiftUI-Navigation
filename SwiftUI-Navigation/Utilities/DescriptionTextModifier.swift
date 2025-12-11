//
//  CardViewModifier.swift
//  SwiftUI-Navigation
//
//  Created by Dmytro Maksiutenko on 2025-12-11.
//

import SwiftUI

struct DescriptionTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background{
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .stroke(.blue, style: .init(lineWidth: 1))
                    .shadow(color: .gray, radius: 5)
            }
    }
}
