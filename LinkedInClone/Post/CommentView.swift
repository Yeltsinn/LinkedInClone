//
//  CommentView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 22/05/25.
//

import SwiftUI

struct CommentView: View {
    
    var comment: Comment
    
    var body: some View {
        HStack(alignment: .top) {
            profileImage
            textContents
        }
        .padding(.horizontal)
        .padding(.vertical)
    }
    
    private var profileImage: some View {
        AsyncImage(url: comment.user.profilePicture) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 35, height: 35)
        .clipShape(Circle())
    }
    
    private var textContents: some View {
        VStack(alignment: .leading, spacing: 16) {
            userInformationsHeader
  
            Text(comment.text)
                .font(.footnote)
            
            userInteractionSection
        }
    }
    
    private var userInformationsHeader: some View {
        VStack {
            HStack {
                Text(comment.user.name)
                    .fontWeight(.semibold)
                    .font(.footnote)
                    .lineLimit(1)
                
                Spacer()
                
                Text("30m")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundStyle(Color(.darkGray))
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                }
                .foregroundStyle(Color(.darkGray))
            }
            
            Text(comment.user.bio)
                .font(.footnote)
                .lineLimit(1)
        }
    }
    
    private var userInteractionSection: some View {
        HStack {
            Button {
                
            } label: {
                Text("Like")
            }
            
            Text("|")
            
            Button {
                
            } label: {
                Text("Reply")
            }
        }
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundStyle(Color(.darkGray))
    }
}
