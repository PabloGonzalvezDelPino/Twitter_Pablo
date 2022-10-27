//
//  Friends.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct MyData{
    static let friendsList: [Friend] = [
        Friend(name: "Andres Cordon", message: "A ver si le damos un poco de caña", imageName: "nagato"),
        Friend(name: "Daniel Morlans", message: "Sabeeeeeees???", imageName: "deidara"),
        Friend(name: "Jose Romo", message: "Que chaval", imageName: "sasuke")
       ]
}

struct Friend: Hashable, Identifiable{
    var id = UUID()
    var name: String
    var message: String
    var imageName: String
}

