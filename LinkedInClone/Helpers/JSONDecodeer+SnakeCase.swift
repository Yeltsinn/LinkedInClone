//
//  JSONDecodeer+SnakeCase.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 10/05/25.
//

import Foundation

extension JSONDecoder {
    static var snakeCase: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
}
