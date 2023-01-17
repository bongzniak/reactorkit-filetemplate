//
//  BaseViewController.swift
//
//  Created by Fernando on 27/09/2019.
//  Copyright © 2019 tmsae. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Then

class BaseViewController: UIViewController {

    
    var disposeBag = DisposeBag()
    
    lazy private(set) var className: String = {
        return type(of: self).description().components(separatedBy: ".").last ?? ""
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        addViews()
        setupViews()
        setupConstraints()
    }
    
    func addViews() {
    }

    func setupViews() {
    }
    
    func setupConstraints() {
        // Override point
    }
}
