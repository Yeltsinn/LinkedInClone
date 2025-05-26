//
//  Comment.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 22/05/25.
//

import Foundation

struct Comment: Codable {
    var id: String
    var user: User
    var text: String
    var likes: Int
    var date: Date
}
