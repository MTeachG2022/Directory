//
//  NetworkMiddleware.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation
import Alamofire

class NetworkMiddleware: RequestInterceptor {

    func adapt(_ urlRequest: URLRequest,
               for session: Session,
               completion: @escaping (Result<URLRequest, Error>) -> Void) {

        var urlRequest = urlRequest

        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue(Constants.apiCredentials, forHTTPHeaderField: "apicredentials")
        if let token = UserDefaultsService.sharedInstance.authToken {
            urlRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }

        completion(.success(urlRequest))
    }

    lazy var sessionManager: Alamofire.Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 60
        configuration.timeoutIntervalForRequest = 60
        return Alamofire.Session(configuration: configuration, interceptor: self)
    }()

}

