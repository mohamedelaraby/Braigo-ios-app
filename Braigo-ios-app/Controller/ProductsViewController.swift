//
//  ProductsViewController.swift
//  Braigo-ios-app
//
//  Created by Winston on 1/3/1441 AH.
//  Copyright © 1441 AH Winston. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
 
    
    // [ products ] :- Hold products class objects
    private(set) public var products = [Product]()

/*---------------[ MARK:- @IBOutlets ]-----------------------------*/
    @IBOutlet weak var productsCollection:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Make ProductViewContoller the delgate and the data source for the UICollection view
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    
    // initProducts :- Get the propriate product for the propriate category
    func initProducts(forCategory category: Category){
        products = DataServices.instance.getProduct(forCategoryTitle: category.title)
        
        //Change the bar title for the product title
        navigationItem.title = category.title
    
    }
    
    
    
    /*-----------[MARK:- Products UIColletionView methods ]----------*/
    //Asks your data source object for the number of items in the specified section.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    //Asks your data source object for the cell that corresponds to the specified item in the collection view.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            let product = products[indexPath.row]
        
            cell.updateViews(product: product)
            
            return cell
        }
        return ProductCell()
    }
    
}
