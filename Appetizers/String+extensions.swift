//
//  String+extensions.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/14/1402 AP.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
