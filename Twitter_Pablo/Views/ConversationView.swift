//
//  ConversationView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct ConversationView: View {
    var friend: Friend
    @State private var showMenu: Bool = false
    @State private var selection: UUID?
    @State private var newMessage = ""

    var body: some View {
        NavigationView{
            ZStack{
                VStack(alignment: .leading, spacing: 0){
                    
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
                    Form{
                        HStack{
                            TextField("Escribir mensaje", text: $newMessage)
                            Image(systemName: "paperplane.fill")
                                .font(.system(size: 30))
                        }
                    }.frame(height: 90)
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
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    HStack(alignment: .center, spacing: 5){
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
                    }
                    
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
                            Label("Options", systemImage: "list.bullet.circle.fill")
                            .font(.system(size: 30))
                            .font(.title)
                        }
                    }
                }
            }
            .accentColor(.red)
        }
        .background(Color.blue)
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView(friend: MyData.friendsList.first!)
    }
}

