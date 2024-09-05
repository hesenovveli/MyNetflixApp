//
//  APICaller.swift
//  MyNetflixApp
//
//  Created by User on 05.09.24.
//

import Foundation

struct Constants {
    static let API_KEY = "e94bd46440da83f9b0dad9c8f721cf59"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}


class APICaller {
    static let shared = APICaller()
    
    
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
     
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
                
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
