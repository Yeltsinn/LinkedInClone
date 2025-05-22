//
//  PostView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 01/05/25.
//

import SwiftUI

struct PostView: View {
    
    @StateObject var viewModel: PostViewModel
    
    init(post: Post) {
        _viewModel = StateObject(wrappedValue: PostViewModel(post: post))
    }
    
    var body: some View {
        ScrollView {
            VStack {
                headerSection
                contentSection
                statsSection
                userInteractionSection
                Spacer()
            }
        }
        .padding(.horizontal)
        .padding(.vertical)
        .background(Color.white)
    }
    
    private var headerSection: some View {
        HStack {
            AsyncImage(url: viewModel.post.user.profilePicture) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(viewModel.post.user.name)
                    .fontWeight(.semibold)
                
                Text(viewModel.post.user.bio)
                    .lineLimit(1)
                    .foregroundColor(Color(.darkGray))
                
                Text("2w ago")
                    .foregroundColor(Color(.darkGray))
                
            }
            .font(.footnote)
        }
    }
    
    private var contentSection: some View {
        Text(viewModel.post.content)
            .font(.subheadline)
            .padding(.vertical)
    }
    
    private var statsSection: some View {
        HStack {
            reactionsResume
            Spacer()
            
            Button {
                
            } label: {
                Text("\(viewModel.post.commentsCount) comments")
                    .foregroundColor(Color(.darkGray))
            }
            
            Text("•")
                .foregroundColor(Color(.darkGray))
            
            Button {
                
            } label: {
                Text("\(viewModel.post.sharesCount) reposts")
                    .foregroundColor(Color(.darkGray))
            }
        }
        .font(.subheadline)
    }
    
    private var reactionsResume: some View {
        HStack(spacing: -6) {
            Image(systemName: "heart.circle.fill")
                .foregroundColor(Color.customRed)
                .background(Circle().stroke(.white, lineWidth: 2))
            Image(systemName: "hand.thumbsup.circle.fill")
                .foregroundColor(Color.customBlue)
                .background(Circle().stroke(.white, lineWidth: 2))
            Image(systemName: "hand.raised.circle.fill")
                .foregroundColor(Color.customGreen)
                .background(Circle().stroke(.white, lineWidth: 2))
            
            Text("\(viewModel.post.reactionsCount)")
                .foregroundColor(Color(.darkGray))
                .padding(.leading, 12)
        }
        .imageScale(.large)
    }
    
    private var userInteractionSection: some View {
        VStack {
            Divider()
            
            HStack {
                PostActionButton(imageName:  "hand.thumbsup", text: "Like")
                
                Spacer()
                
                NavigationLink(destination: CommentPostView(post: viewModel.post)) {
                    PostActionButton(imageName:  "bubble", text: "Comment")
                }
                
                Spacer()
                
                PostActionButton(imageName:  "arrow.2.squarepath", text: "Repost")
                
                Spacer()
                
                PostActionButton(imageName:  "paperplane", text: "Send")
            }
            .padding(.horizontal)
            .padding(.vertical)
            .foregroundColor(Color(.darkGray))
            .fontWeight(.bold)
        }
    }
}

#Preview {
    PostView(post: MockData.posts.first!)
}
