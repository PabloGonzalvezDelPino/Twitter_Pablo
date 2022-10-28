//
//  MandangaView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct MandangaView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass.circle.fill")
                }
            NotificationsView()
                .tabItem{
                    Image(systemName: "bell.fill")
                }
            ContactsView()
                .tabItem{
                    Image(systemName: "envelope.fill")
                }
        }.background(.gray)
    }
}

struct MandangaView_Previews: PreviewProvider {
    static var previews: some View {
        MandangaView()
    }
}
