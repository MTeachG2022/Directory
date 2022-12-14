//
//  RTLAwareCollectionFlow.swift
//  Directory
//
//  Created by Mohamed Moustafa on 14/12/2022.
//

import UIKit

class RTLAwareCollectionFlow: UICollectionViewFlowLayout {
    override var flipsHorizontallyInOppositeLayoutDirection: Bool {
        return L102Language.isRTL
    }
}
