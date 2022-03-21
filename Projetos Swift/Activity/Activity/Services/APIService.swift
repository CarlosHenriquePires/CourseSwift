//
//  APIService.swift
//  Activity
//
//  Created by Aloc SP11704 on 21/03/22.
//

import Foundation

// MARK: - enum Errors
enum ConsumingAPIErrors: Error{
    case urlInvalid
    case noProcessData
    case noDataAvailable
}

// MARK: - protocol Service
protocol ServiceProtocol {
    func getUsers(completion: @escaping(Result<[Users], ConsumingAPIErrors>)-> Void)
}


// MARK: - class Service Protocol
class APIService: ServiceProtocol {
    let session = URLSession.shared
    let url = "https://run.mocky.io/v3/bc5ba143-4885-4541-8c12-d67a54978e75"
    
    
    static var shared: APIService = {
        let instance = APIService()
        return instance
    }()
    
    //MARK: - get Users from API
    func getUsers(completion: @escaping (Result<[Users], ConsumingAPIErrors>) -> Void) {
        guard let url = URL(string: url) else { return completion(.failure(.urlInvalid))}
        
        let dataTask = session.dataTask(with: url) { data, _ , _ in
        
            do {
                
                guard let jsonData = data else { return completion(.failure(.noDataAvailable))}

                let decoder = JSONDecoder()
                
                let usersResponse = try decoder.decode([Users].self, from: jsonData)
                
                completion(.success(usersResponse))
            }catch {
                completion(.failure(.noProcessData))
            }
        
        }
        dataTask.resume()
  
    }
    
}
