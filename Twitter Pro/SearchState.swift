//
//  SearchState.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/25.
//

struct SearchState: Equatable {
    var isExpand: Bool = false
    var menuTitle: String = "検索タイプ"
    var searchType: SearchType? = nil
}
