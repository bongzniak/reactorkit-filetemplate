//
//  CommonService.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import Moya
import RxSwift 

typealias CommonServiceNetworking = Networking<CommonAPI>

protocol CommonServiceType {
}

final class CommonService: NSObject, CommonServiceType {
    
    private let networking: CommonServiceNetworking 

    init(networking: CommonServiceNetworking) {
        self.networking = networking
    }
}
