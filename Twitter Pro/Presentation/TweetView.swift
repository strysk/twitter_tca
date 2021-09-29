//
//  TweetView.swift
//  Twitter Pro
//
//  Created by Ryosuke Seto on 2021/09/29.
//

import SwiftUI

struct TweetView: View {
    
    private let userName: String
    private let tweetText: String
    
    init(userName: String, tweetText: String) {
        self.userName = userName
        self.tweetText = tweetText
    }
    
    var body: some View {
        HStack {
            Image("")
                .frame(width: 80, height: 80)
                .background(Color.blue)
                .clipShape(Circle())
            
            VStack {
                Text(userName)
                Text(tweetText)
            }
        }
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView(userName: "aaa", tweetText: "bbb")
    }
}
