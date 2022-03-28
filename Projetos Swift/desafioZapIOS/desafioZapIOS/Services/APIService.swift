//
//  APIService.swift
//  desafioZapIOS
//
//  Created by Aloc SP11704 on 28/03/22.
//

import Foundation
import UIKit
import Alamofire

enum ConsumingAPIErrors: Error {
    case urlInvalid
    case noProcessData
    case noDataAvailable
}

protocol ServiceProtocol {
    func getPersons(completion: @escaping(Result<[Person], ConsumingAPIErrors>) -> Void)
}

class APIService: ServiceProtocol {
    let url = "https://run.mocky.io/v3/6c19e542-c97e-468c-91aa-dc2915530c4c"
    
    // Criando instancia pra singleton
    static var shared: APIService = {
        let instance = APIService()
        return instance
    }()
    
    
    // MARK: - get Persons from API
    
    func getPersons(completion: @escaping (Result<[Person], ConsumingAPIErrors>) -> Void) {
        
        // Verificando se a url é valida caso nao seja gera um completion de url invalida
        guard let url = URL(string: url) else {return completion(.failure(.urlInvalid))}
        
        // Realizando a requisicao e convertendo o json em objeto de Person
        AF.request(url,method: .get).validate().responseDecodable(of: [Person].self) {
            res in
            guard let persons  = res.value else { // verificando se o persons nao eh nulo
                return
            }
            completion(.success(persons))
        }
    }
    
    
}
