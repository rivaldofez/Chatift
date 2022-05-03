//
//  Message.swift
//  Chatift
//
//  Created by Rivaldo Fernandes on 03/05/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
