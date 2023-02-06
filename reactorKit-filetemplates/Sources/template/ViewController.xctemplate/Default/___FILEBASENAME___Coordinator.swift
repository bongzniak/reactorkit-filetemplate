//___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName___Coordinator: BaseCoordinator, AnyObject {
    
    private var childCoordinators: [Coordinator] = []
    private var navigationController: UINavigationController
    
    // MARK: Initializer
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
    }
}
