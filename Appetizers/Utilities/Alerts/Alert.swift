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
    //MARK: - Network Alerts
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
    
    //MARK: - Account Alerts
    
    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message: Text("Please ensure all the fields in the form have been filled out"),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Please ensure your email is correct"),
        dismissButton: .default(Text("OK"))
    )
}
