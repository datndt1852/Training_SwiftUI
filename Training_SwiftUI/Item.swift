//
//  Item.swift
//  Training_SwiftUI
//
//  Created by Đạt Nguyễn on 26/11/24.
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
