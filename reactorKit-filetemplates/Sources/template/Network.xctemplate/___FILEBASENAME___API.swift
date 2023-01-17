//___FILEHEADER___

import Moya 
import MoyaSugar 

enum ___VARIABLE_productName___API {
}

// MARK: SugarTargetType

extension ___VARIABLE_productName___API: SugarTargetType {
    
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