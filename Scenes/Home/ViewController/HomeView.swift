//
//  HomeView.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit
import Lottie

class HomeView: BaseView {
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .appMainText
        return view
    }()

//    let backgroundImage: UIImageView = {
//        var image = UIImageView()
//        image.image = UIImage(named: "Albukoor_Splach_BG")
//        return image
//    }()
//
//    let cloudImage: UIImageView = {
//        var image = UIImageView()
//        image.image = UIImage(named: "Albukoor_Cloud")
//        image.contentMode = .scaleToFill
//        return image
//    }()
//
//    let patternImage: UIImageView = {
//        var image = UIImageView()
//        image.image = UIImage(named: "Albukoor_Pattern")
//        image.contentMode = .scaleAspectFit
//        return image
//    }()
//
//    let animationView: LottieAnimationView = {
//        var animated = LottieAnimationView()
//        animated = .init(name: "albukoor-logo_anim")
//        animated.play()
//        return animated
//    }()
//
//    let albukoorTitleLabel: UILabel = {
//        var label = UILabel()
//        label.text = "مبادرة البكور"
//        label.font = .poppine(.bold, size: 37)
//        label.textColor = .appMainText
//        return label
//    }()
//
//    let albukoorSecTitleLabel: UILabel = {
//        var label = UILabel()
//        label.text = "لحياة مباركة تبدأ من الفجر"
//        label.font = .poppine(.medium, size: 17)
//        label.textColor = .appMainColor
//        return label
//    }()
//
//    let mianStackView: UIStackView = {
//        var stack = UIStackView()
//        stack.axis = .vertical
//        stack.spacing = 20
//        return stack
//    }()
//
//    let secStackView: UIStackView = {
//        var stack = UIStackView()
//        stack.axis = .vertical
//        return stack
//    }()

    //    let activityIndicatorView: UIActivityIndicatorView  = {
    //        let indicatorView = UIActivityIndicatorView()
    //        indicatorView.color = .appMainColor
    //        indicatorView.startAnimating()
    //        return indicatorView
    //    }()

    override func setupView() {
        //        addSubview(activityIndicatorView)
        //        activityIndicatorView.anchor(.centerX(centerXAnchor),
        //                                     .centerY(centerYAnchor))
        backgroundColor = .blue
//        UIView.animate(withDuration: 1) {
//            self.cloudImage.frame.origin.y = -50
//        }
//
//        UIView.animate(withDuration: 1) {
//            self.patternImage.frame.origin.y = 50
//        }
//
        addSubview(containerView)
        containerView.fillSuperview()
//
//        mianStackView.addArrangedSubview(animationView)
//        mianStackView.addArrangedSubview(secStackView)
//        secStackView.addArrangedSubview(albukoorTitleLabel)
//        secStackView.addArrangedSubview(albukoorSecTitleLabel)
//
//        containerView.addSubview(backgroundImage)
//        backgroundImage.anchor(.top(topAnchor, constant: 0),
//                               .bottom(bottomAnchor, constant: 0),
//                               .leading(leadingAnchor, constant: 0),
//                               .trailing(trailingAnchor, constant: 0))
//
//        containerView.addSubview(cloudImage)
//        cloudImage.anchor(.bottom(bottomAnchor, constant: 0),
//                          .leading(leadingAnchor, constant: 0),
//                          .trailing(trailingAnchor, constant: 0))
//
//        containerView.addSubview(patternImage)
//        patternImage.anchor(.top(topAnchor, constant: 0),
//                            .trailing(trailingAnchor, constant: 0),
//                            .leading(leadingAnchor, constant: 0))
//
//        containerView.addSubview(mianStackView)
//        mianStackView.anchor(.centerX(centerXAnchor),
//                             .centerY(centerYAnchor))
    }
}

