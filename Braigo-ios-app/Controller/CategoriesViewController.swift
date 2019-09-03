//
//  ViewController.swift
//  Braigo-ios-app
//
//  Created by Winston on 8/28/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
/*---------------[ MARK:- @IBOutlets ]-----------------------------*/
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    
/*---------------[ MARK:- TableView Methods ]--------------------*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create a reusable cell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell {
            //hold up the right category for the right cell
            let category = DataServices.instance.getCategories()[indexPath.row]
            
            cell.updateViews(category: category)
            
            return cell
        } else {
            return CategoryCell()
        }
    }
    

    // Find the propariate category that is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        // Get the propariate category  row which is tapped
        let category = DataServices.instance.getCategories()[indexPath.row]
        
        //Perform a segue
        performSegue(withIdentifier: "ProductsVC", sender: category)
        
    }
    
    //Set up the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let productVC = segue.destination as? ProductsViewController {
        productVC.initProducts(forCategory: sender as! Category)
        }
    }
    

    
    
}

