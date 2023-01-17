//___FILEHEADER___

import Foundation
import RxDataSources

enum ___VARIABLE_productName___Section {
    case section([___VARIABLE_productName___SectionItem])
}

extension ___VARIABLE_productName___Section: SectionModelType {
    typealias Item = ___VARIABLE_productName___SectionItem
    var items: [Item] {
        switch self {
        case .section(let items):
            return items
        }
    }
    
    init(original: ___VARIABLE_productName___Section, items: [Item]) {
        switch original {
        case .section:
            self = .section(items)
        }
    }
}

enum ___VARIABLE_productName___SectionItem {
}