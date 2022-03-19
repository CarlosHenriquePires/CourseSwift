//
//  Cars.swift
//  TableViewCustom
//
//  Created by Aloc SP11704 on 19/03/22.
//

import Foundation

struct Cars {
    var image:String
    var nameCompany:String
    var model: String
    
    
    
    static func populateCars() -> [Cars]{
        var cars:[Cars]=[]
        cars.append(Cars(image: "ford-logo", nameCompany: "Ford", model: "Fiesta"))
        cars.append(Cars(image: "chevrolet-logo", nameCompany: "Chevrolet", model: "Camaro"))
        cars.append(Cars(image: "volkswagen-logo", nameCompany: "Volkswagen", model: "Gol"))
        cars.append(Cars(image: "fiat-logo", nameCompany: "Fiat", model: "Uno"))
        return cars
    }
}
