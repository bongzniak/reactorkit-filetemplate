//
//  WithCollectionViewCellReactor.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import ReactorKit
import RxCocoa
import RxSwift

class WithCollectionViewListCellReactor: Reactor {

    typealias Action = NoAction
    typealias Mutation = NoMutation

    struct State {
        let section: [CommonSection]
    }

    let initialState: State

    init(section: [CommonSection]) {
        initialState = State(section: section)
    }
}
