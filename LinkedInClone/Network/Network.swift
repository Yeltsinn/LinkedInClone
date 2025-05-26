//
//  NetworkEndpoints.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 10/05/25.
//

import Foundation

enum Network {
    
    enum Endpoint {
        static let baseURLString = "http://localhost:3000"
        static let postFeed = URL(string: "\(baseURLString)/feed")!
        static let commentsList = URL(string: "\(baseURLString)/comments")!
    }
}
