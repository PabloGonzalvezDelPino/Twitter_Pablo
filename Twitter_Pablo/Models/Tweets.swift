//
//  Tweets.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 28/10/22.
//

import SwiftUI

struct TwitterHome{
    static let Tweets: [Tweet] = [
        Tweet(name: "Andres Cordon",  imageName: "nagato", message: "GO TO THE FUCKING GYM"),
        Tweet(name: "Daniel Morlans", imageName: "deidara", message: "Me quiero morir"),
        Tweet(name: "Jose Romo", imageName: "sasuke", message: "Juego moira y no me ducho"),
        Tweet(name: "Martín", imageName: "kankuro", message: "EEEEEEeeeeeeso eeeeeeeess"),
        Tweet(name: "Rubius", imageName: "itachi", message: "Mi gato es muy bonito"),
        Tweet(name: "Carlos", imageName: "zabuza", message: "Fino señores"),
        Tweet(name: "Andres Cordon",  imageName: "nagato", message: "GO TO THE FUCKING GYM"),
        Tweet(name: "Daniel Morlans", imageName: "deidara", message: "Me quiero morir"),
        Tweet(name: "Jose Romo", imageName: "sasuke", message: "Juego moira y no me ducho"),
        Tweet(name: "Martín", imageName: "kankuro", message: "EEEEEEeeeeeeso eeeeeeeess"),
        Tweet(name: "Rubius", imageName: "itachi", message: "Mi gato es muy bonito"),
        Tweet(name: "Carlos", imageName: "zabuza", message: "Fino señores"),
       ]
}

struct Tweet: Identifiable{
    var id = UUID()
    var name: String
    var imageName: String
    var message: String
}
struct TweetCell: View {
    
    var tweet: Tweet
    
    var body: some View{
        HStack(spacing: 10){
            Image(tweet.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50,height: 50)
                .cornerRadius(50)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading, spacing: 5){
                Text(tweet.name)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                    .font(.system(size: 20))
                Text(tweet.message)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .font(.system(size: 10))
                HStack(spacing: 60){
                    Image(systemName: "message")
                    Image(systemName: "return")
                    Image(systemName: "heart")
                    Image(systemName: "link")
                }
            }
        }
    }
}
