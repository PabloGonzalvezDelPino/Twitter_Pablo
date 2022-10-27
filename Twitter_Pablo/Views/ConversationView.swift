//
//  ConversationView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct ConversationView: View {
    var friend: Friend
    @State private var selection: UUID?
    @State private var newMessage = ""

    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                HStack(alignment: .center, spacing: 50){
                    Image(friend.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame( width: 100, height: 100)
                        .cornerRadius(50)
                
                        Text(friend.name)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .font(.system(size: 80))
                }.padding(.horizontal)
                
                
                    List(selection: $selection){
                        ForEach(friend.conversation){ msg in
                            Text(msg.message)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                                .font(.system(size: 60))
                         }
                    }
                Spacer()
                Form{
                    HStack{
                        TextField("Escribir mensaje", text: $newMessage)
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 30))
                    }
                    
                }.frame(height: 90)
                
            }
                
                
                
                
    
            }
            //.navigationTitle(friend.name)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button {
                        print("OPTIONS")
                    } label: {
                        Label("Options", systemImage: "list.bullet.circle.fill")
                            .font(.system(size: 30))
                    }
                }
            }
        .accentColor(.black)
    
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView(friend: MyData.friendsList.first!)
    }
}

