//
//  MovieEndpoints.swift
//  Movies
//
//  Created by Elena Diniz on 3/18/22.
//

enum MovieEndpoints {
    private static var environment: Environmenting {
        Environment.shared
    }
    
    static let downloadAPI = "\(environment.baseURL)/popular?api_key=12936d62fffd31723a5b1cca14af9929"
}
