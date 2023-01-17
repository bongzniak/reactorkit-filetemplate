//___FILEHEADER___

import Foundation
import RxDataSources

enum ___VARIABLE_productName___Section {
    case section([___VARIABLE_productName___SectionItem])
}

extension ___VARIABLE_productName___Section: AnimatableSectionModelType {
    typealias Identity = String
    typealias Item = ___VARIABLE_productName___SectionItem

    var identity: String {
        ""
    }

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

extension ___VARIABLE_productName___SectionItem: IdentifiableType, Equatable {

    typealias Identity = String

    var identity: String {
        switch self {
            default:
                return ""
        }
    }

    static func == (lhs: ___VARIABLE_productName___SectionItem, rhs: ___VARIABLE_productName___SectionItem) -> Bool {
        lhs.identity == rhs.identity
    }
}
