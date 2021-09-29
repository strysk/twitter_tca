//
//  SearchResultView.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/28.
//

import SwiftUI
import ComposableArchitecture

struct SearchResultView: View {
    
    private let store: Store<SearchState, SearchAction>
    
    init(store: Store<SearchState, SearchAction>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store) { viewStore in
            List {
                ForEach(viewStore.tweetData, id: \.tweetId) {
                    TweetView(userName: $0.userName, tweetText: $0.tweetText)
                }
            }
        }
    }
}

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView(store: Store(initialState: SearchState(), reducer: searchReducer, environment: SearchEnvironment()))
    }
}
