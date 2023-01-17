//
//  WithCollectionViewController.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import UIKit

import ReactorKit
import RxCocoa
import RxSwift

final class WithCollectionViewController: 
    BaseViewController, ReactorKit.View, WithCollectionCoordinator {
    
    typealias Reactor = WithCollectionViewReactor
    
    private enum Metric {
        
    }
    
    private enum Color {
        
    }
    
    private enum Font {
        
    }
    
    private enum Localized {
        
    }
    
    // MARK: Properties

    private weak var coordinator: WithCollectionCoordinator?
    
    // MARK: UI
    
    let bodyView: WithCollectionView
    
    // MARK: Initializing
    
    init(
        reactor: Reactor,
        bodyView: WithCollectionView
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
    
    override func addViews() {
        super.addViews()
    }
    
    override func setupConstraints() {
        super.setupConstraints()
    }
    
    // MARK: Binding
    
    func bind(reactor: Reactor) {

        // Action
        
        self.bodyView.refreshControl.rx.controlEvent(.valueChanged)
            .map { Reactor.Action.refresh }
            .bind(to: reactor.action)
            .disposed(by: self.disposeBag)
        
        // State
        
        reactor.state.map {
                $0.sections
            }
            .subscribe(onNext: { [weak self] sections in
                self?.bodyView.sections.accept(sections)
            })
            .disposed(by: disposeBag)
            
        reactor.state.map {
                $0.isRefreshing
            }
            .distinctUntilChanged()
            .asDriver(onErrorJustReturn: false)
            .drive(self.bodyView.refreshControl.rx.isRefreshing)
            .disposed(by: disposeBag)
    }
}

extension WithCollectionViewController {
    class func resolve() -> WithCollectionViewController {
        WithCollectionViewController(
            reactor: WithCollectionViewReactor(),
            bodyView: WithCollectionView.resolve()
        )
    }
}
