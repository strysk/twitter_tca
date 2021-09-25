//
//  ContentView.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    
    let store: Store<SearchState, SearchAction>
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: Store(initialState: SearchState(), reducer: searchReducer, environment: SearchEnvironment()))
    }
}
