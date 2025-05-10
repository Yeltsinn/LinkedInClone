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
    var publishedDate: Date
    var commentsCount: Int
    var repostsCount: Int
    var reactionsCount: Int
}

//"id": "post_001",
//"user": {
//    "id": "user_001",
//    "name": "LeBron James",
//    "username": "kingjames",
//    "profile_picture": "https://res.cloudinary.com/dtllfjvnj/image/upload/v1741108786/lebron_james_photo_b26rji.webp",
//    "bio": "Professional Basketball Player | NBA | Los Angeles Lakers"
//},
//"content": "Basketball is more than just a game—it's a way of life. Every day, I push myself to be better, to lead, and to inspire the next generation.\n\nHard work, discipline, and teamwork are key. Whether you're on the court or in the office, success comes from dedication and a winning mindset.\n\nAlways strive for greatness! 💪🏾🏆",
//"shares_count": 892,
//"comments_count": 341,
//"created_at": "2025-03-04T14:15:00Z"
