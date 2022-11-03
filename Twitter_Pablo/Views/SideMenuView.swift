//
//  SideMenuView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack{
            Text("Settings")
                .font(.title)
                .foregroundColor(.white)
            Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
                .blur(radius: 0.5)
            
            Link(destination: URL(string: "https://twitter.com/privacy")!){
                Text("Privacy")
            }
            .font(.title)
            .foregroundColor(.white)
            
            Text("QR")
                .font(.title)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(25)
        .background(Color.blue)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
