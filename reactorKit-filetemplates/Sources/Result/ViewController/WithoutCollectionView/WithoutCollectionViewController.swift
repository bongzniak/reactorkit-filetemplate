//
//  WithoutCollectionViewController.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import UIKit

import ReactorKit
import RxCocoa
import RxSwift

final class WithoutCollectionViewController: 
    BaseViewController, ReactorKit.View, WithoutCollectionCoordinator {
    
    typealias Reactor = WithoutCollectionViewReactor
    
    private enum Metric {
        
    }
    
    private enum Color {
        
    }
    
    private enum Font {
        
    }
    
    private enum Localized {
        
    }
    
    // MARK: Properties

    private weak var coordinator: WithoutCollectionCoordinator?
    
    // MARK: UI
    
    let bodyView: WithoutCollectionView
    
    // MARK: Initializing
    
    init(
        reactor: Reactor,
        bodyView: WithoutCollectionView
    ) {
        defer {
            self.reactor = reactor
        }
        
        self.bodyView = bodyView
        
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: View Life Cycle
    
    override func loadView() {
        super.loadView()

        view = bodyView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.coordinator = self
    }
    
    // MARK: Binding
    
    func bind(reactor: Reactor) {

        // Action
        
    }
}

extension WithoutCollectionViewController {
    class func instance() -> WithoutCollectionViewController {
        WithoutCollectionViewController(
            reactor: WithoutCollectionViewReactor(),
            bodyView: WithoutCollectionView.instance()
        )
    }
}
