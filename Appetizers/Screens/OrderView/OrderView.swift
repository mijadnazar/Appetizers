//
//  OrderView.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/8/1402 AP.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orders
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button(action: {
                        print("Order placed")
                    }, label: {
                        APButton(title: "$9.99 - Place Order")
                            .padding(.bottom, 25)
                    })
                }
                .navigationTitle("🧾 Orders")
                
                if orderItems.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message: "You have no items in your order.\n Please add an appetizer"
                    )
                }
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
