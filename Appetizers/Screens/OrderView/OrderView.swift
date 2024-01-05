//
//  OrderView.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/8/1402 AP.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.appetizers) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button(action: {
                        print("Order placed")
                    }, label: {
//                        APButton(title: "$\(order.orderPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.orderPrice, specifier: "%.2f") - Place Order")
                    })
                    .standardButtonStyled()
                    .padding(.bottom, 25)
                }
                .navigationTitle("🧾 Orders")
                
                if order.appetizers.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message: "You have no items in your order.\n Please add an appetizer"
                    )
                }
            }
        }
    }
}

#Preview {
    OrderView()
}
