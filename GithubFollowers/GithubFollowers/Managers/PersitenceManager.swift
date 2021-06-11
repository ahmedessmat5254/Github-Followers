//
//  PersitenceManager.swift
//  GithubFollowers
//
//  Created by Ahmed Essmat on 08/06/2021.
//

import Foundation


enum PersistenceActionType {
    case add, remove
    
}

enum PersistenceManager {
    static let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    static func updateWith(favorite: Follower, actionType: PersistenceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavorites { results in
            switch results {
            case .success(var favorites):
                switch actionType {
                case .add:
                    guard !favorites.contains(favorite) else {
                        (completed(.alreadyInFavorites))
                        return
                    }
                    favorites.append(favorite)
                    
                case .remove:
                    favorites.removeAll {$0.login == favorite.login }
                }

                completed(save(favorite: favorites))
                
            case .failure(let error):
                completed(error)
            }
        }
    }
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoriteData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoriteData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    static func save(favorite: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encoderFavorites = try encoder.encode(favorite)
            defaults.set(encoderFavorites, forKey: Keys.favorites)
            return nil
        }catch {
            return .unableToFavorite
        }
    }
}
