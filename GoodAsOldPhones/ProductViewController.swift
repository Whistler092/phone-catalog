//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Ramiro Andres on 5/03/16.
//  Copyright © 2016 Ramiro Andres. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var productNameLabel: UILabel!
    var product: Product?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let p = product{
            productNameLabel.text = p.name
            
            if let i = p.productImage{
                productImageView.image = UIImage(named: i)
            }
        }
        
        /*productNameLabel.text = product?.name
        
        productImageView.image = UIImage(named: "1973 deskPhone2")*/
    }
    
    @IBAction func addToCartPressed(sender: AnyObject) {
        print("Buttom Tapped")
    }
 
}
