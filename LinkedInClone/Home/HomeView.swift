//
//  HomeView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 01/05/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel = .init()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.posts, id: \.id) { post in
                        PostView(post: post)
                            .onAppear {
                                viewModel.fetchMorePostsIfNeeded(currentlyDisplayedPost: post)
                            }
                    }
                }
            }
            .background(Color(.systemGray6))
            .onAppear {
                viewModel.fetchPostFeed()
            }
        }
    }
}

#Preview {
    HomeView()
}
