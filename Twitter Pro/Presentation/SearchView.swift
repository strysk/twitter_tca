//
//  ContentView.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/24.
//

import SwiftUI
import ComposableArchitecture

struct SearchView: View {
    
    private let store: Store<SearchState, SearchAction>
    
    init(store: Store<SearchState, SearchAction>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store) { viewStore in
            NavigationView {
                VStack(spacing: .zero) {
                    Spacer()
                    
                    DropDownMenu(store: store)
                    
                    TextField("ユーザーID", text: viewStore.binding(get: \.userId, send: SearchAction.inputUserId))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    TextField("キーワード", text: viewStore.binding(get: \.keyword, send: SearchAction.inputKeyword))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Spacer()
                    
                    Button("検索") { viewStore.send(.search) }
                    .frame(maxWidth: 80, minHeight: 48)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    
                    NavigationLink(destination: SearchResultView(), isActive: viewStore.binding(get: \.shouldShowResult, send: SearchAction.showResult)) {
                        EmptyView()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(store: Store(initialState: SearchState(), reducer: searchReducer, environment: SearchEnvironment()))
    }
}
