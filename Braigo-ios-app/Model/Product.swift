//
//  Product.swift
//  Braigo-ios-app
//
//  Created by Winston on 1/3/1441 AH.
//  Copyright © 1441 AH Winston. All rights reserved.
//

import Foundation

class Product {
    private(set) public var imageName: String
    private(set) public var price: String
    private(set) public var title: String
    
    init(imageName:String, price:String, title:String){
        self.imageName = imageName
        self.price = price
        self.title = title
    }
}
