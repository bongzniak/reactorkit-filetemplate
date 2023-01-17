//___FILEHEADER___

import Moya
import RxSwift 

typealias ___VARIABLE_productName___ServiceNetworking = Networking<___VARIABLE_productName___API>

protocol ___VARIABLE_productName___ServiceType {
}

final class ___VARIABLE_productName___Service: NSObject, ___VARIABLE_productName___ServiceType {
    
    private let networking: ___VARIABLE_productName___ServiceNetworking 

    init(networking: ___VARIABLE_productName___ServiceNetworking) {
        self.networking = networking
    }
}
