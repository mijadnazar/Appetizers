//
//  Appetizer.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/8/1402 AP.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 0001, 
        name: "Test Appetizer",
        description: "This is the  description of my  appetizer",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let order1 = Appetizer(
        id: 0001,
        name: "Test Appetizer one",
        description: "This is the  description of my  appetizer",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let order2 = Appetizer(
        id: 0002,
        name: "Test Appetizer two",
        description: "This is the  description of my  appetizer",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let order3 = Appetizer(
        id: 0003,
        name: "Test Appetizer three",
        description: "This is the  description of my  appetizer",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orders = [order1, order2, order3]
}
