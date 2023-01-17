//___FILEHEADER___

import ReactorKit
import RxCocoa
import RxSwift

final class ___VARIABLE_productName___Reactor: Reactor {
  
    enum Action {
        case refresh
    }

    enum Mutation {
        case setRefreshing(Bool)
    }

    struct State {
        var sections: [___VARIABLE_sectionName___] = []
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
