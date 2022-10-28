//
//  ContentView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            List{
                ForEach(TwitterHome.Tweets) { tweet in
                    TweetCell(tweet: tweet)
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
