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
    
    // [ categories ] :- Dummey categories date
    private  let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
   /*---- MARK:- Dummey Products date---------*/
    
    //[ hats ] :- Dummey Hats products
    private let hats = [
        Product(imageName: "hat01.png", price: "$18", title: "Devslops Logo Graphic Beanie"),
        Product(imageName: "hat02.png", price: "$20", title: "Devslops Logo Hat Black"),
        Product(imageName: "hat03.png", price: "$22", title: "Devslops Logo Hat White"),
        Product(imageName: "hat04.png", price: "$25", title: "Devslops Logo Snapback"),
    ]
    
    
    //[ hoodies ] :- Dummey Hoodies products
    private let hoodies = [
     Product(imageName: "hoodies01.png", price: "$32", title: "Devslops logo Hoodies Gray"),
     Product(imageName: "hoodies02.png", price: "$32", title: "Devslops  Hoodies Red"),
     Product(imageName: "hoodies03.png", price: "$32", title: "Devslops  Hoodies Black"),
     Product(imageName: "hoodies04.png", price: "$32", title: "Devslops  Hoodies  Gray "),
    
    ]
    
     //[ shirts ] :- Dummey Shirts products
    private let shirts = [
    Product(imageName: "shirt01.png", price: "$18", title: "Devslops Logo shirt Black"),
    Product(imageName: "shirt02.png", price: "$18", title: "Devslops Badge shirt Gray"),
    Product(imageName: "shirt03.png", price: "$18", title: "Devslops Logo shirt Red"),
    Product(imageName: "shirt04.png", price: "$18", title: "Hustel delegate Gray "),
    Product(imageName: "shirt05.png", price: "$18", title: "Kickflip Studios  Black"),
    ]
    
      //[ digitalGoods ] :- Dummey Digital Goods products
     private let digitalGoods = [Product]()
    
    
    
    // [ getCategories ] :-  Return Dummey categories date
    func getCategories() -> [Category]{
        return categories
    }
    
    //[ getProduct ] :- Return Dummey Products Data
    private func getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    
    //---[ MARK:- Get Products Data]--------//
    // [ getHats ] :-  Return Dummey Hats Products
    private func getHats() -> [Product] {
        return hats
    }
    
    //[ getHoodies ] :- Return  dummy hoodies products
    private func getHoodies() -> [Product] {
        return hoodies
    }
    
    //[ getShirts ] :- Return dummey shirts products
    private func getShirts() -> [Product] {
        return shirts
    }
    
    //[ getDigitalGoods ] :- Return dummey DigitalGoods products
    private func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}

