//
//  ProductsViewController.swift
//  Braigo-ios-app
//
//  Created by Winston on 1/3/1441 AH.
//  Copyright © 1441 AH Winston. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {
    
    private(set) public var products = [Product]()

/*---------------[ MARK:- @IBOutlets ]-----------------------------*/
    @IBOutlet weak var productsCollection:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func initProducts(forCategory category: Category){
        products = DataServices.instance.getProduct(forCategoryTitle: category.title)
    }
    
}
