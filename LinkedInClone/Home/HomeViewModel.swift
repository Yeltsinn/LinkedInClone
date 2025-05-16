//
//  HomeViewModel.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 04/05/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    
    func fetchPostFeed() {
        NetworkRequestor.getFeedItems()
            .map(\.feed)
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: &$posts)
    }
}
