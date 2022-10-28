//
//  ContentView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showMenu: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    List{
                        ForEach(TwitterHome.Tweets) { tweet in
                            TweetCell(tweet: tweet)
                            
                        }
                    }
           .toolbar{
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                       
                        Image("gaara")
                            .resizable()
                            .scaledToFill()
                            .frame( width: 50, height: 50)
                            .cornerRadius(50)
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button {
                            self.showMenu.toggle()
                        } label: {
                            
                            if showMenu {
                                Label("Options", systemImage: "x.circle.fill")
                                .font(.system(size: 30))
                                .font(.title)
                                
                            }else {
                                Label("Options", systemImage: "line.3.horizontal")
                                .font(.system(size: 30))
                                .font(.title)
                            }
                        }
                    }
                }
            
            
                GeometryReader { _ in
                    HStack{
                        Spacer()
                        SideMenuView()
                            .offset(x: showMenu ? 0:  UIScreen.main.bounds.width)
                            .animation(.easeInOut(duration: 0.3), value: showMenu)
                    }
                }
                .background(Color.black.opacity(showMenu ? 0.5 : 0))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
