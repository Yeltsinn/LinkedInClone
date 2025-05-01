//
//  Item.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 01/05/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
