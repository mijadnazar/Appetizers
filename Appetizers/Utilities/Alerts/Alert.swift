//
//  Alert.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/12/1402 AP.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("The data received from the server was invalid"),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from the server. Please try again later or contact support"),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidData  = AlertItem(
        title: Text("Invalid scan type"),
        message: Text("There was an issue contacting the server. If this persists, please contact support"),
        dismissButton: .default(Text("OK"))
    )
    
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to complete your request at this time. Please check your internet connection"),
        dismissButton: .default(Text("OK"))
    )
}
