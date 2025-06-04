//
//  PagedItem.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 27/05/25.
//

import Foundation

struct PagedItem<Item: Codable>: Codable {
    var first: Int
    var prev: Int?
    var next: Int?
    var last: Int
    var pages: Int
    var items: Int
    var data: [Item]
}
