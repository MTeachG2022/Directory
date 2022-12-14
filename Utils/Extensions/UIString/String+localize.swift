//
//  String+localize.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

extension String {
    var localize: String {
        return NSLocalizedString(self, comment: "")
    }
}
