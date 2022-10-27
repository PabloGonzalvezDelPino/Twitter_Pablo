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
            List(selection: $selection){
                ForEach(MyData.friendsList) { friend in
                            HStack(alignment: .center, spacing: 50){
                                NavigationLink(destination: ConversationView(friend: friend),  label: {
                                    FriendCell(friend: friend)
                                })
                                    
                                }
                            }
                        }
                    }.navigationTitle("Contacts")
                }
}

struct FriendCell: View {
    
    var friend: Friend
    
    var body: some View{
        HStack{
            Image(friend.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100,height:100)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack(alignment: .leading, spacing: 5){
                Text(friend.name)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                    .font(.system(size: 30))
                Text(friend.conversation.last!.message)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .font(.system(size: 20))
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}

