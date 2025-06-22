//
//  NetworkRequestor.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 04/05/25.
//

import Foundation
import Combine

class NetworkRequestor {
    static func getFeedItems(page: Int, limit: Int = 5) -> AnyPublisher<PagedItem<Post>, Swift.Error> {
        URLSession.shared
            .dataTaskPublisher(for: Network.Endpoint.postFeed(page: page, limit: limit))
            .map(\.data)
            .decode(type: PagedItem<Post>.self, decoder: JSONDecoder.snakeCase)
            .eraseToAnyPublisher()
    }

    static func getCommentsForPost(id: String) -> AnyPublisher<[Comment], Swift.Error> {
        URLSession.shared
            .dataTaskPublisher(for: Network.Endpoint.commentsList)
            .map(\.data)
            .decode(type: [Comment].self, decoder: JSONDecoder.snakeCase)
            .eraseToAnyPublisher()
    }
    
    static func getUsersToTag() -> AnyPublisher<[User], Swift.Error> {
        URLSession.shared
            .dataTaskPublisher(for: Network.Endpoint.usersList)
            .map(\.data)
            .decode(type: [User].self, decoder: JSONDecoder.snakeCase)
            .eraseToAnyPublisher()
    }
}




































