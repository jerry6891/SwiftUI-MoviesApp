//
//  Films.swift
//  SwiftUI-MoviesOMDB
//
//  Created by Rex Karnufex on 4/29/21.
//

import Foundation

// Represents a model object for a search result.
struct Films: Decodable {
    // Array of 'Film' instances modelling the search results.
    var results: [Film]
    
    private enum CodingKeys: String, CodingKey {
        case results = "Search"
    }
}
