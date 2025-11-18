//
//  Track.swift
//  PublicSpeakingPlayer
//
//  Created by ENZO CRISTIAN on 16/11/25.
//

import Foundation

struct Track: Identifiable {
    let id = UUID()
    let title: String
    let album: String
    var duration: Double
    let coverImageName: String
}

