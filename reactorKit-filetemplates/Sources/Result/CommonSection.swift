//
//  CommonSection.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import Foundation
import RxDataSources

enum CommonSection {
    case section([CommonSectionItem])
}

extension CommonSection: SectionModelType {
    typealias Item = CommonSectionItem
    var items: [Item] {
        switch self {
        case .section(let items):
            return items
        }
    }
    
    init(original: CommonSection, items: [Item]) {
        switch original {
        case .section:
            self = .section(items)
        }
    }
}

enum CommonSectionItem {
}