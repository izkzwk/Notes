//
//  Note.swift
//  Notes Watch App
//
//  Created by Dzmitry Bladyka on 4.04.23.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
