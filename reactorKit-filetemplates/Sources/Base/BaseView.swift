// 
// BaseView.swift
// tmsae
// 
// Created by bongzniak on 2022/06/07.
// Copyright 2022 tmsae. All rights reserved.
//

import UIKit
import SnapKit
import ReusableKit
import RxSwift
import RxCocoa
import Then

class BaseView: UIView {
    
    // MARK: Properties
    
    var disposeBag = DisposeBag()

    // MARK: Properties

    init() {
        super.init(frame: .zero)

        addViews()
        setupViews()
        setupConstraints()
    }

    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }

    lazy private(set) var className: String = {
        return type(of: self).description().components(separatedBy: ".").last ?? ""
    }()

    func addViews() {
    }

    func setupViews() {
    }

    func setupConstraints() {
    }
}
