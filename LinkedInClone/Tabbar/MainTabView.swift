//
//  TabBarView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 04/05/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
