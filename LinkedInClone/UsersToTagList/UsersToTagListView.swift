//
//  UsersToTagListView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 10/06/25.
//

import SwiftUI

struct UsersToTagListView: View {
    
    var users: [User]
    
    var body: some View {
        LazyVStack {
            ForEach(users, id: \.self) { user in
                HStack {
                    AsyncImage(url: user.profilePicture) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .fontWeight(.semibold)
                            .font(.footnote)
                            .lineLimit(1)
                        
                        Text(user.bio)
                            .font(.footnote)
                            .lineLimit(1)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical)
        .background(.white)
    }
}
