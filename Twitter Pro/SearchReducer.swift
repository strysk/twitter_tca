//
//  SearchReducer.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/25.
//

import ComposableArchitecture

let searchReducer = Reducer<SearchState, SearchAction, SearchEnvironment> { state, action ,environment in
    switch action {
    default:
        return .none
    }
}
