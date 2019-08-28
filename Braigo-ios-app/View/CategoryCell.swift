//
//  CategoryCell.swift
//  Braigo-ios-app
//
//  Created by Winston on 8/28/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

 /*---------------[ @IBOutlets ]--------------------*/
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    // [ updateViews ] :- Put new product data into  a cell
    private func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.image)
        categoryTitle.text = category.title
    }

}
