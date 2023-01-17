//
//  CommonAPI.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import Moya 
import MoyaSugar 

enum CommonAPI {
}

// MARK: SugarTargetType

extension CommonAPI: SugarTargetType {
    
    var baseURL: URL {
        URL(string: "/api/v1/")!
    }
    
    var route: Route {
        switch self {
        }
    }
    
    var parameters: Parameters? {
        switch self {
        }
    }
    
    var sampleData: Data {
        Data()
    }
    
    var headers: [String: String]? {
        return nil
    }
}