//
//  MemoRoom.swift
//  ios-NC1-memochat
//
//  Created by 심명진 on 2022/05/05.
//

import Foundation
import SwiftUI

struct Room: Codable, Identifiable {
    var id: Int
    var name: String
    var isFavorite: Bool
    var memo: [Memo]
    
    init(id: Int, name: String, isFavorite: Bool, memo: [Memo]) {
        self.id = id
        self.name = name
        self.isFavorite = isFavorite
        self.memo = memo
    }
    
}

struct Memo: Codable, Identifiable {
    var id: Int
    var content: String
    var date: String
    var isFavorite: Bool
    
    init(id: Int, content: String, date: String, isFavorite: Bool){
        self.id = id
        self.content = content
        self.date = date
        self.isFavorite = isFavorite
    }
}

