//
//  YoutubeSearchResponse.swift
//  MyNetflixApp
//
//  Created by User on 10.09.24.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
