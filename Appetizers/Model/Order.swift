//
//  Order.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/14/1402 AP.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    var orderPrice: Double {
        appetizers.reduce(0) {
            $0 + $1.price
        }
    }
    
    func add(_ appetizer: Appetizer) {
        appetizers.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        appetizers.remove(atOffsets: offsets)
    }
}
