//
//  Networking.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import Moya
import MoyaSugar
import Alamofire
import RxSwift

public protocol NetworkingProtocol {
    func request(
        _ target: SugarTargetType,
        file: String,
        function: StaticString,
        line: UInt
    ) -> Single<Response>
}

public extension NetworkingProtocol {
    func request(
        _ target: SugarTargetType,
        file: String = #file,
        function: StaticString = #function,
        line: UInt = #line
    ) -> Single<Response> {
        request(target, file: file, function: function, line: line)
    }
}

final class Networking<Target: SugarTargetType>: MoyaSugarProvider<Target>, NetworkingProtocol {

    init(plugins: [PluginType]) {
        super.init(plugins: plugins)
    }
}
