//
//  CommentPostViewModel.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 22/05/25.
//

import Foundation

class CommentPostViewModel: ObservableObject {
    
    @Published var comments: [Comment] = []
    
    private var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    func fetchComments() {
        NetworkRequestor.getCommentsForPost(id: post.id)
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: &$comments)
    }
}
