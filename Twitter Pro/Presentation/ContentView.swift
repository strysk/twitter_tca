//
//  ContentView.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/24.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    
    private let store: Store<SearchState, SearchAction>
    
    init(store: Store<SearchState, SearchAction>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store) { viewStore in
            VStack(spacing: .zero) {
                DropDownMenu(store: store)
                
                TextField("キーワード", text: viewStore.binding(get: \.searchKeyword, send: SearchAction.inputText))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: Store(initialState: SearchState(), reducer: searchReducer, environment: SearchEnvironment()))
    }
}
