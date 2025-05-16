//
//  User.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 03/05/25.
//

import Foundation

struct User: Hashable, Codable {
    var name: String
    var bio: String
    var profilePicture: URL
}
