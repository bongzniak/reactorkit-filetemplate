//___FILEHEADER___

import UIKit

import ReactorKit
import RxCocoa
import RxSwift

final class ___VARIABLE_productName___ViewController: 
    BaseViewController, View, ___VARIABLE_productName___Coordinator {
    
    typealias Reactor = ___VARIABLE_productName___ViewReactor
    
    // MARK: Properties

    private weak var coordinator: ___VARIABLE_productName___Coordinator?
    
    // MARK: UI
    
    let bodyView: ___VARIABLE_productName___View
    
    // MARK: Initializing
    
    init(
        reactor: Reactor,
        bodyView: ___VARIABLE_productName___View
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
    
    // MARK: Setup
    
    override func setupProperty() {
        super.setupProperty()
    }
    
    override func setupDelegate() {
        super.setupDelegate()
        
        self.coordinator = self
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

extension ___VARIABLE_productName___ViewController {
    class func instance() -> ___VARIABLE_productName___ViewController {
        ___VARIABLE_productName___ViewController(
            reactor: ___VARIABLE_productName___ViewReactor(),
            bodyView: ___VARIABLE_productName___View.instance()
        )
    }
}
