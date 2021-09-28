//
//  DropDownMenu.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/26.
//

import SwiftUI
import ComposableArchitecture

struct DropDownMenu: View {
    
    private let store: Store<SearchState, SearchAction>
    
    init(store: Store<SearchState, SearchAction>) {
        self.store = store
    }
    
    var body: some View {
        WithViewStore(store) { viewStore in
            VStack() {
                HStack() {
                    Text(viewStore.menuTitle)
                    Image(systemName: viewStore.isExpand ? "chevron.up" : "chevron.down")
                        .frame(width: 24, height: 24)
                }
                .onTapGesture {
                    let modifiedState: SearchAction = viewStore.isExpand ? .shrink : .expand
                    viewStore.send(modifiedState)
                }
                
                if viewStore.isExpand {
                    ForEach(SearchType.allCases, id: \.hashValue) { searchType in
                        Button(searchType.rawValue) {
                            viewStore.send(.selectSearchType(searchType))
                            viewStore.send(.shrink)
                        }
                    }
                }
            }
            .padding(4)
            .border(.black, width: 1)
        }
    }
}

struct DropDownMenu_Previews: PreviewProvider {
    static var previews: some View {
        DropDownMenu(store: Store(initialState: SearchState(isExpand: false), reducer: searchReducer, environment: SearchEnvironment()))
    }
}
