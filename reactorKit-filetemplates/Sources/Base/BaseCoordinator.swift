//
//  BaseCoordinator.swift
//  appname
//
//  Created by bongzniak on 2023/01/17.
//  Copyright © 2023 tmsae. All rights reserved.
//

import UIKit

protocol BaseCoordinator {
    var presenter: BaseViewController { get }
}

extension BaseCoordinator where Self: BaseViewController {
    var presenter: BaseViewController {
        return self
    }
}
