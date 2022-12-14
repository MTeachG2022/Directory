//
//  User.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

struct User: Codable {
    let id: Int?
    let name: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}

