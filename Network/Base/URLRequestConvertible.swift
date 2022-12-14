//
//  URLRequestConvertible.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Alamofire

protocol URLRequestConvertible: Alamofire.URLRequestConvertible {
    var method: HTTPMethod { get }
    var parameters: [String: Any]? { get }
    var url: URL { get }
    var encoding: ParameterEncoding { get }
}
