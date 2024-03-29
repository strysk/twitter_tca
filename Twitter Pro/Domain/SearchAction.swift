//
//  SearchAction.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/25.
//

enum SearchAction: Equatable {
    case expand
    case shrink
    case selectSearchType(SearchType)
    case inputUserId(String)
    case inputKeyword(String)
    case search
    case showResult
}
