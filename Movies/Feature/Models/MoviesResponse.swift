//
//  MoviesResponse.swift
//  Movies
//

import Foundation

struct MoviesPage: Decodable {

    let movies: [Movie]

    enum CodingKeys: String, CodingKey {
        case movies = "results"
    }
}
