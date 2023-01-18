//___FILEHEADER___

import UIKit

import ReactorKit
import RxCocoa
import RxSwift

final class ___VARIABLE_productName___ViewController: 
    BaseViewController, ReactorKit.View, ___VARIABLE_productName___Coordinator {
    
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

        self.coordinator = self
    }
    
    // MARK: Binding
    
    func bind(reactor: Reactor) {

        // Action
        
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
