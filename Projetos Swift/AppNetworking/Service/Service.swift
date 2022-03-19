//
//  Service.swift
//  AppNetworking
//
//  Created by Aloc SP11704 on 18/03/22.
//

import Foundation

enum UserError: Error{
    case urlInvalid
    case noProcessData
    case noDataAvailable
}

protocol ServiceProtocol {
    // @escaping -> diz q a funcao ira retornar algo
    func getUsers(completion: @escaping(Result<[User],UserError>) -> Void)
    
}

class Service: ServiceProtocol{
    let session = URLSession.shared
    let url = "url do mock"
    
    static var shared: Service = {
        let instance = Service()
        return instance
    }()
    
    func getUsers(completion: @escaping(Result<[User], UserError>) -> Void) {
        guard let url = URL(string:url) else { return completion(.failure(UserError.urlInvalid))}
        
        let dataTask = session.dataTask(with: url) { data, _ , _ in
            
            do {
                guard let jsonData = data else { return completion(.failure(UserError.noDataAvailable))}
                
                let decoder = JSONDecoder()
                let userResponse = try decoder.decode([User].self, from: jsonData)
                
                completion(.success(userResponse))
                
                
            } catch {
                completion(.failure(UserError.noProcessData))
            }
        }
        
        dataTask.resume()
    }
    
    
    
}
