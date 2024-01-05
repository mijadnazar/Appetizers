//
//  EmptyState.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/14/1402 AP.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -30.0)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is a test message and I am intentionaly making it long")
}
