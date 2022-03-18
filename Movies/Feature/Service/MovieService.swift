//
//  MovieService.swift
//  Movies
//

import Foundation

/*
 Json Contract
 {
    "page":1,
    "results":[
       {
          "adult":false,
          "backdrop_path":"/inJjDhCjfhh3RtrJWBmmDqeuSYC.jpg",
          "genre_ids":[
             28,
             878
          ],
          "id":399566,
          "original_language":"en",
          "original_title":"Godzilla vs. Kong",
          "overview":"In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.",
          "popularity":6335.196,
          "poster_path":"/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg",
          "release_date":"2021-03-24",
          "title":"Godzilla vs. Kong",
          "video":false,
          "vote_average":8.4,
          "vote_count":4359
       }
    ]
}
*/

class MovieService {

    func fetchMovies(completion: @escaping ([Movie]?, Error?) -> Void) {
        guard let api = URL(string: MovieEndpoints.downloadAPI) else {
            return
        }

        let session = URLSession.shared
        let task = session.dataTask(with: api) { (data, response, error) in
            guard let jsonData = data else {
                return
            }

            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode(MoviesPage.self, from: jsonData)

                completion(decoded.movies, nil)
            } catch let error {
                completion(nil, error)
            }
        }

        task.resume()
    }
}
