//
//  TweetView.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/29.
//

import SwiftUI

struct TweetView: View {
    var body: some View {
        HStack {
            Image("")
                .frame(width: 80, height: 80)
                .background(Color.blue)
                .clipShape(Circle())
            
            VStack {
                Text("ユーザー名")
                Text("本文のサンプル本文のサンプル本文のサンプル本文のサンプル本文のサンプル本文のサンプル本文のサンプル")
            }
        }
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView()
    }
}
