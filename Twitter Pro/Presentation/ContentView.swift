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
                Spacer()
                
                DropDownMenu(store: store)
                
                TextField("キーワード", text: viewStore.binding(get: \.searchKeyword, send: SearchAction.inputText))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Spacer()
                
                Button("検索") { viewStore.send(.search) }
                .frame(maxWidth: 80, minHeight: 48)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(8)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: Store(initialState: SearchState(), reducer: searchReducer, environment: SearchEnvironment()))
    }
}
