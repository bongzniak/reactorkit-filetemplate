//
//  WithCollectionViewReactor.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import ReactorKit
import RxCocoa
import RxSwift

final class WithCollectionViewReactor: Reactor {
  
    enum Action {
        case refresh
    }

    enum Mutation {
        case setRefreshing(Bool)
    }

    struct State {
        var sections: [CommonSection] = []
        var isRefreshing: Bool = false
    }

    let initialState: State

    // MARK: Initializing
    
    init() {
        initialState = State()
    }

    // MARK: Mutate

    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .refresh:
            return .concat([
                .just(.setRefreshing(true)),
                .just(.setRefreshing(false))
            ])
        }
    }

    // MARK: Reduce

    func reduce(state: State, mutation: Mutation) -> State {
        var state = state

        switch mutation {
            case .setRefreshing(let isRefreshing):
                state.isRefreshing = isRefreshing
        }

        return state
    }
}
