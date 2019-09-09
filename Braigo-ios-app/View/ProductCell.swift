//
//  ProductCell.swift
//  Braigo-ios-app
//
//  Created by Winston on 1/3/1441 AH.
//  Copyright © 1441 AH Winston. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    /*---------------[ MARK:- @IBOutlets ]-----------------------*/
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    // updateViews :- Update the cell views by the new data
    public func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.title
    }
}
