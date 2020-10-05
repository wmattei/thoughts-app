//
//  Thought.swift
//  thoughts
//
//  Created by Wagner Mattei on 04/10/20.
//

import SwiftUI

struct Thought: Hashable, Codable, Identifiable {
    var id: Int
    var content: String
    var createdAt: Date
    var from: User
}
