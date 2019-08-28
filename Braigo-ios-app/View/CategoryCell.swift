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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
