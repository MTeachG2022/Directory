//
//  UserDataService.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

class UserDataService: NSObject {

    static let sharedInstance = UserDataService()

    private override init () { }

    var currentUser: User?

    func removeUserData() {
        currentUser = nil
    }
}
