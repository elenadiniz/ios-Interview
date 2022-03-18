//
//  Environments.swift
//  Movies
//
//  Created by Elena Diniz on 3/18/22.
//

protocol Environmenting {
    var baseURL: String { get }
}

struct Environment: Environmenting {
    static let shared = Environment()

    private init() {}

    var baseURL: String {
        if isDevMode() {
            return "https://api.themoviedb.org/3/movie/dev"
        } else {
            return "https://api.themoviedb.org/3/movie"
        }
    }
    
    private func isDevMode() -> Bool {
        var isDevMode: Bool

        #if DEBUG
            isDevMode = true
        #else
            isDevMode = false
        #endif
        return isDevMode
    }
}
