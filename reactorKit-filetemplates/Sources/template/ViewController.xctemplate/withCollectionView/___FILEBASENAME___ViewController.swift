//___FILEHEADER___

import UIKit

import ReactorKit
import RxCocoa
import RxSwift

final class ___VARIABLE_productName___ViewController: BaseViewController, ReactorKit.View {
    
    typealias Reactor = ___VARIABLE_productName___ViewReactor
    
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
        
//        reactor.state.map {
//                $0.sections
//            }
//            .asDriver(onErrorJustReturn: [])
//            .drive(self.bodyView.collectionView.rx.items(dataSource: $0))
//            .disposed(by: disposeBag)
            
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
    class func resolve() -> ___VARIABLE_productName___ViewController {
        ___VARIABLE_productName___ViewController(
            reactor: ___VARIABLE_productName___ViewReactor(),
            bodyView: ___VARIABLE_productName___View.resolve()
        )
    }
}
