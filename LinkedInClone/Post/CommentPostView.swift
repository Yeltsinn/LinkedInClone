//
//  CommentPostView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 21/05/25.
//

import SwiftUI

struct CommentPostView: View {
    
    @StateObject var viewModel: PostViewModel
    @StateObject var commentsViewModel: CommentPostViewModel
    
    init(post: Post) {
        let postViewModel = PostViewModel(post: post, shouldShowCommentSection: true)
        _viewModel = StateObject(wrappedValue: postViewModel)
        
        let commentsViewModel = CommentPostViewModel(post: post)
        _commentsViewModel = StateObject(wrappedValue: commentsViewModel)
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                    PostView(post: viewModel.post)
                    commentsList
                }
            }
            
            if viewModel.shouldShowCommentSection {
                CommentInputTextView(commentText: $viewModel.commentText, profilePictureURL: viewModel.post.user.profilePicture)
            }
        }
        .onAppear {
            commentsViewModel.fetchComments()
        }
    }
    
    private var commentsList: some View {
        LazyVStack {
            ForEach(commentsViewModel.comments, id: \.id) { comment in
                CommentView(comment: comment)
            }
        }
    }
}

#Preview {
    CommentPostView(post: MockData.posts.first!)
}
