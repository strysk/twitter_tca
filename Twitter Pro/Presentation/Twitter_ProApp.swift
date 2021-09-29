//
//  Twitter_ProApp.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/24.
//

import SwiftUI
import ComposableArchitecture

@main
struct Twitter_ProApp: App {
    var body: some Scene {
        WindowGroup {
            SearchView(store: Store(initialState: SearchState(), reducer: searchReducer, environment: SearchEnvironment()))
        }
    }
}
