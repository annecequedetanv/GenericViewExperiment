//
//  GenericView.swift
//  GenericView
//
//  Created by Natasha Murashev on 11/11/15.
//  Copyright © 2015 Natasha Murashev. All rights reserved.
//

import UIKit

protocol ColorProtocol {
    var color: UIColor { get }
}

class GenericView<T where T: ColorProtocol>: UIView {

    func configure(colorDelegate: T) {
        backgroundColor = colorDelegate.color
    }

}
