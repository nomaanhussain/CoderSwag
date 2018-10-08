//
//  DataService.swift
//  CoderSwag
//
//  Created by Noman Hussain on 24/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
            Product(title: "Devslpoes", imageName: "hat01.png", price: "$25"),
            Product(title: "Devslpoes", imageName: "hat02.png", price: "$25"),
            Product(title: "Devslpoes", imageName: "hat03.png", price: "$25"),
            Product(title: "Devslpoes", imageName: "hat04.png", price: "$25")
        
        ]
    
    private let hoodies = [
        Product(title: "Devslpoes", imageName: "hoodie01.png", price: "$25"),
        Product(title: "Devslpoes", imageName: "hoodie02.png", price: "$25"),
        Product(title: "Devslpoes", imageName: "hoodie03.png", price: "$25"),
        Product(title: "Devslpoes", imageName: "hoodie04.png", price: "$25")
        
    ]
    
    private let shirts = [
        Product(title: "Devslpoes", imageName: "shirt01.png", price: "$25"),
        Product(title: "Devslpoes", imageName: "shirt02.png", price: "$25"),
        Product(title: "Devslpoes", imageName: "shirt03.png", price: "$25"),
        Product(title: "Devslpoes", imageName: "shirt04.png", price: "$25")
        
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories () -> [Category]{
        return categories
    }
    
    func getProducts (forCategoryTitle title : String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        case "HOODIES":
            return getHoodies()
        default:
            return getShirts()
        }
    }
    
    func getShirts () -> [Product]{
        return shirts
    }
    
    func getHoodies () -> [Product]{
            return hoodies
    }
    
    func getHats () -> [Product]{
        return hats
    }
    
    func getDigitalGoods () -> [Product]{
        return digitalGoods
    }
}




