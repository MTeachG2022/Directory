//
//  Constants.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

struct Constants {

#if DEBUG
    static let isUsingTestEnv = true
#else
    static let isUsingTestEnv = false
#endif

    static var link: String {

        if isUsingTestEnv {
            return "albukoor.com" // test
        } else {
            return "albukoor.com" // production
        }
    }

    static var baseUrl: String {
        return "https://\(link)/api/auth"
    }

    static var apiCredentials = ""
}

