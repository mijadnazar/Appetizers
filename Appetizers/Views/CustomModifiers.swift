//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/15/1402 AP.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButtonStyled() -> some View {
        return self.modifier(StandardButtonStyle())
    }
}

