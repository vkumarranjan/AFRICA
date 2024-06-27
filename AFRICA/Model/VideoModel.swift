//
//  VideoModel.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 16/05/24.
//

import Foundation


struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
