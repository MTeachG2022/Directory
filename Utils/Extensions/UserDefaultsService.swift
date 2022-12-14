//
//  UserDefaultsService.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

class UserDefaultsService: NSObject {

    static let sharedInstance = UserDefaultsService()

    private override init () { }

    private let userDefault = UserDefaults.standard

    var authToken: String? {
        get {
            return userDefault.value(forKey: "com.Albukoor.authToken") as? String
        }
        set {
            userDefault.set(newValue, forKey: "com.Albukoor.authToken")
        }
    }

    func removeUserDefaults() {
        authToken = nil
    }
}
