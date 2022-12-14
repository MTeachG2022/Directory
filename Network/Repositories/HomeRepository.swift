//
//  HomeRepository.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Alamofire

protocol HomeRepositoryDelegate: AnyObject {
    func profile(completionHandler: @escaping(AFResult<BaseModelWithData<User>>) -> Void)
}

class HomeRepository: HomeRepositoryDelegate {
    private var network: NetworkProtocol
    init(network: NetworkProtocol) {
        self.network = network
    }

    func profile(completionHandler: @escaping (AFResult<BaseModelWithData<User>>) -> Void) {
        let route = HomeNetworkRouter.profile
        network.request(route, decodeTo: BaseModelWithData<User>.self, completionHandler: completionHandler)
    }

}
