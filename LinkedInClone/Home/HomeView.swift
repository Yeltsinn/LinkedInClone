//
//  HomeView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 01/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(MockData.posts, id: \.self) { post in
                    PostView(post: post)
                }
            }
        }
        .background(Color(.systemGray6))
    }
}

#Preview {
    HomeView()
}
