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
                    PostView(viewModel: viewModel)
                    commentsList
                }
            }
            
            VStack(spacing: .zero) {
                
                if viewModel.shouldShowUsersToTagList {
                    ScrollView {
                        UsersToTagListView(
                            users: viewModel.usersToTag,
                            onSelect: { user in
                                viewModel.userToTagDidSelect(user)
                            }
                        )
                    }
                    .frame(maxHeight: .infinity)
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
                }
                
                if viewModel.shouldShowCommentSection {
                    CommentInputTextView(
                        commentText: $viewModel.commentText,
                        isCommentReady: viewModel.isCommentReady,
                        profilePictureURL: viewModel.post.user.profilePicture,
                        commentPost: {
                            viewModel.sendComment()
                        },
                        tagPeople: {
                            viewModel.tagPeople()
                        },
                        uploadImage: {
                            viewModel.uploadImage()
                        },
                        onChangeText: { newText in
                            viewModel.commentTextDidChange(newText)
                        }
                    )
                }
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
