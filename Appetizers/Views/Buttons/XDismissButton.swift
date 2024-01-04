//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/13/1402 AP.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundStyle(Color.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.medium)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
