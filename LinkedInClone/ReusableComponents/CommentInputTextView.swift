//
//  TextFieldComment.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 22/05/25.
//

import SwiftUI

struct CommentInputTextView: View {
    
    private enum Constants {
        static let delayToStartFocus: Double = 0.05
    }
    
    @Binding var commentText: String
    @FocusState var isTextFieldFocused: Bool
    
    var profilePictureURL: URL
    
    var body: some View {
        ZStack(alignment: .top) {
            blurView
            HStack(alignment: .center) {
                userProfileImage
                inputTextField
            }
            .padding(.horizontal)
            .padding(.vertical)
            .background(.white)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + Constants.delayToStartFocus) {
                    isTextFieldFocused = true
                }
            }
        }
    }
    
    private var userProfileImage: some View {
        AsyncImage(url: profilePictureURL) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: 35, height: 35)
                .clipShape(Circle())
        } placeholder: {
            ProgressView()
        }
    }
    
    private var inputTextField: some View {
        TextField("Leave your thoughts here...", text: $commentText)
            .focused($isTextFieldFocused)
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            .overlay(
                Capsule()
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
    }
    
    private var blurView: some View {
        Rectangle()
            .fill(Color.black.opacity(0.25))
            .frame(height: 10)
            .blur(radius: 5)
    }
}
