//
//  BaseCodable.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

protocol BaseCodable: Codable {
    var status: Status? { get set }
    var message: String? { get set }
    var apiStatus: Int? {get set}
}

struct BaseModel: BaseCodable {
    var status: Status?
    var message: String?
    var apiStatus: Int?

    enum CodingKeys: String, CodingKey {
        case status, message
        case apiStatus = "api_status"
    }
}

struct BaseModelWithData<T: Codable>: BaseCodable {
    var status: Status?
    var apiStatus: Int?
    var message: String?
    var data: T?

    enum CodingKeys: String, CodingKey {
        case status, message, data
        case apiStatus = "api_status"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        status = try? container.decode(Status.self, forKey: .status)
        apiStatus = try? container.decode(Int.self, forKey: .apiStatus)
        message = try? container.decode(String.self, forKey: .message)
        data = try? container.decode(T.self, forKey: .data)
    }
}

enum Status: String, Codable {
    case success
    case error
}

