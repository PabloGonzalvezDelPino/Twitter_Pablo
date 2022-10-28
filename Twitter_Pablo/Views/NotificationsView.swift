//
//  NotificationsView.swift
//  Twitter_Pablo
//
//  Created by Apps2T on 27/10/22.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView{
            Text("Notification List")
                .font(.system(size: 60, weight: .bold))
                .multilineTextAlignment(.center)
        .navigationTitle("Notifications")
        }
        
    }
    
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
