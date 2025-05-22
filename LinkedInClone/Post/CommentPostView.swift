//
//  CommentPostView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 21/05/25.
//

import SwiftUI

struct CommentPostView: View {
    
    @StateObject var viewModel: PostViewModel
    
    init(post: Post) {
        let postViewModel = PostViewModel(post: post, shouldShowCommentSection: true)
        _viewModel = StateObject(wrappedValue: postViewModel)
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            PostView(post: viewModel.post)
            
            if viewModel.shouldShowCommentSection {
                CommentInputTextView(commentText: $viewModel.commentText, profilePictureURL: viewModel.post.user.profilePicture)
            }
        }
    }
}

#Preview {
    CommentPostView(post: MockData.posts.first!)
}
