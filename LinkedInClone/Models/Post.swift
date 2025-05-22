//
//  Post.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 03/05/25.
//

import Foundation

struct Post: Hashable, Codable {
    var id: String
    var user: User
    var content: String
    var createdAt: Date
    var commentsCount: Int
    var sharesCount: Int
    var reactionsCount: Int
}
