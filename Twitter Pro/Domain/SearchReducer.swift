//
//  SearchReducer.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/25.
//

import ComposableArchitecture

let searchReducer = Reducer<SearchState, SearchAction, SearchEnvironment> { state, action ,environment in
    switch action {
    case .expand:
        state.isExpand = true
        return .none
        
    case .shrink:
        state.isExpand = false
        return .none
        
    case .selectSearchType(let searchType):
        state.menuTitle = searchType.rawValue
        state.searchType = searchType
        return .none
    }
}
