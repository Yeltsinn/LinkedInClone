//
//  PostView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 01/05/25.
//

import SwiftUI

struct PostView: View {
    
    var post: Post
    
    var body: some View {
        VStack {
            headerSection
            contentSection
            statsSection
            userInteractionSection
        }
        .padding(.horizontal)
        .padding(.vertical)
        .background(Color.white)
    }
    
    private var headerSection: some View {
        HStack {
            Image(post.user.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(post.user.name)
                    .fontWeight(.semibold)
                
                Text(post.user.bio)
                    .lineLimit(1)
                    .foregroundColor(Color(.darkGray))
                
                Text("2w ago")
                    .foregroundColor(Color(.darkGray))
                
            }
            .font(.footnote)
        }
    }
    
    private var contentSection: some View {
        Text(post.contentText)
        .font(.subheadline)
        .padding(.vertical)
    }
    
    private var statsSection: some View {
        HStack {
            reactionsResume
            Spacer()
            
            Button {
                
            } label: {
                Text("209 comments")
                    .foregroundColor(Color(.darkGray))
            }
            
            Text("•")
                .foregroundColor(Color(.darkGray))
            
            Button {
                
            } label: {
                Text("63 reposts")
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
            
            Text("1,316")
                .foregroundColor(Color(.darkGray))
                .padding(.leading, 12)
        }
        .imageScale(.large)
    }
    
    private var userInteractionSection: some View {
        VStack {
            Divider()
            
            HStack {
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "hand.thumbsup")
                        Text("Like")
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "bubble")
                        Text("Comment")
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "arrow.2.squarepath")
                        Text("Repost")
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "paperplane")
                        Text("Send")
                    }
                }
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
