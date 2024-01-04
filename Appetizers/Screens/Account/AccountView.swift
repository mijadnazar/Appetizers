//
//  AccountView.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/8/1402 AP.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)
                    DatePicker(
                        "Birthdate",
                        selection: $viewModel.birthDate,
                        displayedComponents: .date
                    )
                    
                    Button(action: {
                        print("saved")
                    }, label: {
                        Text("Save Changes")
                    })
                } header: {
                    Text("Account")
                }
                
                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                } header: {
                    Text("Account")
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
