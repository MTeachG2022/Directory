//
//  HomeNetworkRouter.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Alamofire

enum HomeNetworkRouter: URLRequestConvertible {

    case profile

    var method: HTTPMethod {
        return .get
    }

    var parameters: [String: Any]? {
        return nil
    }

    var url: URL {
        return URL(string: "\(Constants.baseUrl)/")!
            .appendingPathComponent(path)
    }

    var path: String {
        switch self {
        case .profile:
            return "profile"
        }
    }

    var encoding: ParameterEncoding {
        return JSONEncoding.default
    }

    func asURLRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        return try encoding.encode(urlRequest, with: parameters)
    }
}

