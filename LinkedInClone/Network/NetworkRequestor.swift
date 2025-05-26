//
//  NetworkRequestor.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 04/05/25.
//

import Foundation
import Combine

class NetworkRequestor {
    static func getFeedItems() -> AnyPublisher<[Post], Swift.Error> {
        URLSession.shared
            .dataTaskPublisher(for: Network.Endpoint.postFeed)
            .map(\.data)
            .decode(type: [Post].self, decoder: JSONDecoder.snakeCase)
            .eraseToAnyPublisher()
    }

    static func getCommentsForPost(id: String) -> AnyPublisher<[Comment], Swift.Error> {
        URLSession.shared
            .dataTaskPublisher(for: Network.Endpoint.commentsList)
            .map(\.data)
            .decode(type: [Comment].self, decoder: JSONDecoder.snakeCase)
            .eraseToAnyPublisher()
    }
}




































