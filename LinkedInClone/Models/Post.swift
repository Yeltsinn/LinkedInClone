//
//  Post.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 03/05/25.
//

import Foundation

struct Post: Hashable {
    var user: User
    var contentText: String
    var publishedDate: Date
    var commentsCount: Int
    var repostsCount: Int
    var reactionsCount: Int
}
