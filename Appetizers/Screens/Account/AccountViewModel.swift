//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/14/1402 AP.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthDate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            return false
        }
        
        guard email.isValidEmail else {
            return false
        }
        
        return true
    }
}
