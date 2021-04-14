//
//  MoviesViewModel.swift
//  Movies
//

import Foundation

class MoviesViewModel {
    private let service = MovieService()

    private var completion: (([Movie]?, Error?) -> Void)?

    init() { }

    func loadContacts(_ completion: @escaping ([Movie]?, Error?) -> Void) {
        self.completion = completion
        service.fetchMovies { contacts, err in
            self.handle(contacts, err)
        }
    }

    private func handle(_ contacts: [Movie]?, _ error: Error?) {
        if let e = error {
            completion?(nil, e)
        }

        if let contacts = contacts {
            completion?(contacts, nil)
        }
    }
}
