//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by alphansotech100 on 06/04/24.
//

import Foundation
class NetworkManager {
    static let shared = NetworkManager()
    
    let baseURL = "https://api.github.com/"
    let perPage: Int = 100
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void){
        let endpoint = baseURL + "users/\(username)/" + "followers?per_page=\(perPage)&page=\(page)"
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
         
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            if let _ = error {
                completed(.failure(.unableToComplete))
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200  else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            }catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
