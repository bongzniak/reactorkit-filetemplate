//___FILEHEADER___

import ReactorKit
import RxCocoa
import RxSwift

class ___VARIABLE_productName___ListCellReactor: Reactor {

    typealias Action = NoAction
    typealias Mutation = NoMutation

    struct State {
        let section: [___VARIABLE_sectionName___]
    }

    let initialState: State

    init(section: [___VARIABLE_sectionName___]) {
        initialState = State(section: section)
    }
}
