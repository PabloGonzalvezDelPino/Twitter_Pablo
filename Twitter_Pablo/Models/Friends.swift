//
//  Friends.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct MyData{
    static let friendsList: [Friend] = [
        Friend(name: "Andres Cordon",  imageName: "nagato", conversation: [Message(message: "Menudo mongolo"), Message(message: "a ver si le damos un poco de caña")]),
        Friend(name: "Daniel Morlans", imageName: "deidara", conversation: [Message(message: "Menudo mongolo"), Message(message: "a ver si le damos un poco de caña")]),
        Friend(name: "Jose Romo", imageName: "sasuke", conversation: [Message(message: "Menudo mongolo"), Message(message: "a ver si le damos un poco de caña"),Message(message: "Menudo mongolo"),Message(message: "Menudo mongolo"),Message(message: "Menudo mongolo"),Message(message: "Menudo mongolo"),Message(message: "Menudo mongolo")])
       ]
}

struct Friend: Identifiable{
    var id = UUID()
    var name: String
    var imageName: String
    var conversation: [Message]
}
struct Message:Hashable, Identifiable{
    var id = UUID()
    var message: String
}

