//
//  WithoutCollectionViewCellReactor.swift
//  reactorKit-filetemplates
//
//  Created by bongzniak on 2023/01/18.
//

import ReactorKit
import RxCocoa
import RxSwift

class WithoutCollectionViewCellReactor: Reactor {
    
    enum Action {
    }
    
    enum Mutation {
    }
    
    struct State {
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
