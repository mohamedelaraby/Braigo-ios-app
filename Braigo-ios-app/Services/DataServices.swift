//
//  DataServices.swift
//  Braigo-ios-app
//
//  Created by Winston on 8/28/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import Foundation
class DataServices{
    static let instance = DataServices()   // Signleton pattern:  make only one copy in memory from dataServices class
    
    //Create our data source
    private  let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
}

