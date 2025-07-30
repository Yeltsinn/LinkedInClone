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
    @Published var usersToTag: [User] = []
    
    var isCommentReady: Bool {
        !commentText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var shouldShowUsersToTagList: Bool {
        guard shouldShowCommentSection else { return false }
        
        let pattern = "(^|\\s)@$"
        return commentText.range(of: pattern, options: .regularExpression) != nil
    }
    
    
    init(
        post: Post,
        shouldShowCommentSection: Bool = false
    ) {
        self.post = post
        self.shouldShowCommentSection = shouldShowCommentSection
    }
    
    func sendComment() {
        print("comment: \(commentText)")
    }
    
    func tagPeople() {
        commentText = commentText.isEmpty ? "@" : "\(commentText) @"
        getUsersToTag()
    }
    
    func uploadImage() {
        
    }
    
    func commentTextDidChange(_ text: String) {
        guard shouldShowCommentSection else { return }
        getUsersToTag()
    }
    
    func userToTagDidSelect(_ user: User) {
        guard commentText.last == "@" else { return }
        commentText.removeLast()
        commentText += user.name
    }
    
    private func getUsersToTag() {
        NetworkRequestor.getUsersToTag()
            .receive(on: DispatchQueue.main)
            .replaceError(with: [])
            .assign(to: &$usersToTag)
    }
}
