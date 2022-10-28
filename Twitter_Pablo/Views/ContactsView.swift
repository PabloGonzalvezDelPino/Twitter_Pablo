//
//  ContactsView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct ContactsView: View {
    
    @State private var selection: UUID?
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.blue
            
                List(selection: $selection){
                    ForEach(MyData.friendsList) { friend in
                                HStack(alignment: .center, spacing: 50){
                                    NavigationLink(destination: ConversationView(friend: friend),  label: {
                                        FriendCell(friend: friend)
                                    })
                                }
                    }
                }
                .navigationTitle("Contacts")
            }
        }
    }
}


struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}

