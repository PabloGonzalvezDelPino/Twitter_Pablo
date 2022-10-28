//
//  SearchView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            HStack {
                TextField("Search...", text: $searchText)
                    .padding(8)
                    .padding(.horizontal, 24)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 8)
                        }
                    )
                    .offset(y: -180)
            }
            .padding(.horizontal,4)
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        
        Image("perro")
                .resizable()
                .scaledToFill()
                .frame(width: 300,height: 300)
                .cornerRadius(50)
                .padding(.vertical, 4)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
