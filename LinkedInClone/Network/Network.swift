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
        static let commentsList = URL(string: "\(baseURLString)/comments")!
        static let usersList = URL(string: "\(baseURLString)/users")!
        
        static func postFeed(page: Int, limit: Int) -> URL {
            var urlComponents = URLComponents(string: "\(baseURLString)/feed")!
            urlComponents.queryItems = [
                URLQueryItem(name: "_page", value: "\(page)"),
                URLQueryItem(name: "_per_page", value: "\(limit)")
            ]
            return urlComponents.url!
        }
    }
}
