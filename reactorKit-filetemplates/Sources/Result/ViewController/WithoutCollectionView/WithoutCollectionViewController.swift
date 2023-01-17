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

final class WithoutCollectionViewController: BaseViewController, ReactorKit.View {
    
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
    }
    
    override func addViews() {
        super.addViews()
        
    }
    
    override func setupConstraints() {
        super.setupConstraints()
    }
    
    // MARK: Binding
    
    func bind(reactor: Reactor) {

        // Action
        
    }
}

extension WithoutCollectionViewController {
    class func resolve() -> WithoutCollectionViewController {
        WithoutCollectionViewController(
            reactor: WithoutCollectionViewReactor(),
            bodyView: WithoutCollectionView.resolve()
        )
    }
}
