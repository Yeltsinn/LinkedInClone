//
//  PostViewModel.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 21/05/25.
//

import SwiftUI

class PostViewModel: ObservableObject {
    
    @Published var post: Post
    @Published var shouldShowCommentSection: Bool
    @Published var commentText = String.init()
    
    init(
        post: Post,
        shouldShowCommentSection: Bool = false
    ) {
        self.post = post
        self.shouldShowCommentSection = shouldShowCommentSection
    }
}
