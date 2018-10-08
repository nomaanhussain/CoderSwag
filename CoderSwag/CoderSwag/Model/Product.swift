//
//  Product.swift
//  CoderSwag
//
//  Created by Noman Hussain on 31/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import Foundation
struct Product {
    
    private(set) public var title : String
    private(set) public var price : String
    private(set) public var imageName : String
    
    init(title : String , imageName : String , price : String) {
        self.title = title
        self.imageName = imageName
        self.price = price
    }
}
