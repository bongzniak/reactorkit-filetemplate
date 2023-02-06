//___FILEHEADER___

import ReactorKit
import RxCocoa
import RxSwift

class ___VARIABLE_productName___ListCellReactor: Reactor {

    //    typealias Action = NoAction
    //    typealias Mutation = NoMutation
    
    enum Action {
    }
    
    enum Mutation {
    }
    
    struct State {
        let section: [___VARIABLE_sectionName___]
    }

    let initialState: State
    
    // MARK: Initializing
    
    init() {
        initialState = State()
    }
    
    // MARK: Mutation
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        }
    }
    
    // MARK: Reduce
    
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        }
        return state
    }
}
