//
//  ContactsView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 250, height: 250)
                .foregroundColor(.green)
            Text("Friends")
                .foregroundColor(.white)
                .font(.system(size: 60, weight: .bold))
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
