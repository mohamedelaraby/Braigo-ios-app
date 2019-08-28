//
//  Category.swift :- Hold  product information
//  Braigo-ios-app
//
//  Created by Winston on 8/28/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import Foundation

// [ private(set) public] :- private for setting public for fetching so, You can #Retrieve the class data no set it from any other classes
struct Category{
    
   private(set) public var title: String
   private(set) public var image: String
    
    init(title: String, imageName: String){
        self.title = title
        self.image = imageName
    }
    
}
