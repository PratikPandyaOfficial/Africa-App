//
//  VideoModel.swift
//  Africa
//
//  Created by Drashti on 12/12/23.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String{
        "video-\(id)"
    }
}
