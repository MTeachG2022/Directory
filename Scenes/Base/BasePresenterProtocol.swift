//
//  BasePresenterProtocol.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import Foundation

protocol BasePresenterProtocol: AnyObject {
    func viewDidLoad()
    func didTapNotification()
    func didTapSettings()
    func handleRequestResponse<U: BaseCodable>(_ result: AFResult<U>,
                                               inView view: BaseViewProtocol?,
                                               withRouter router: BaseRouter?,
                                               hideLoading: Bool?) -> U?
}

//extension BasePresenterProtocol {
//    func didTapNotification() {
//        BaseRouter.navigateToNotification
//    }
//
//    func didTapSettings() {
//        BaseRouter.navigateToSettings()
//    }
//}

extension BasePresenterProtocol {

    func handleRequestResponse<U: BaseCodable>(_ result: AFResult<U>,
                                               inView view: BaseViewProtocol?,
                                               withRouter router: BaseRouter?,
                                               hideLoading: Bool? = true) -> U? {
        if hideLoading == true { view?.stopLoading() }
        switch result {
        case .success(let data):
            switch data.status {
            case .success:
                return data
            case .error:
                if let apiStatus = data.apiStatus {
                    if apiStatus == 403 {
                        UserDefaultsService.sharedInstance.removeUserDefaults()
                        UserDataService.sharedInstance.removeUserData()
                        router?.restartLoginScene()
                    } else if apiStatus == 404 {
                        view?.showSelfDismissingAlert("Error".localize)
                    } else {
                        guard data.message != "رقم الهاتف غير مسجل لدينا" else {return nil}
                        view?.showSelfDismissingAlert(data.message ?? "")
                    }
                }
                return nil
            default:
                return nil
            }
        case .failure(let error):
            view?.showSelfDismissingAlert(error.localizedDescription.localize)
            return nil
        }
    }

}
