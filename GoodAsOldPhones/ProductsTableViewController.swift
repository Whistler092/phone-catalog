//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Ramiro Andres on 6/03/16.
//  Copyright © 2016 Ramiro Andres. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        let product5 = Product()
        
        product1.name = "1907 Wall Set"
        product1.productImage = "1907WallSetBig"
        product1.cellImage = "1907WallSetSmall"
        
        product2.name = "1921 Dial Phone"
        product2.productImage = "1921DialPhoneBig"
        product2.cellImage = "1921DialPhoneSmall"
        
        product3.name = "1937 Desk Set"
        product3.productImage = "1937DeskSetBig"
        product3.cellImage = "1937DeskSetSmall"
        
        product4.name = "1984 Motorola Portable"
        product4.productImage = "1984MotorolaPortableBig"
        product4.cellImage = "1984MotorolaPortableSmall"
        
        product5.name = "2016 iPhone 6 Plus"
        product5.productImage = "2016iPhone6PlusBig"
        product5.cellImage = "2016iPhone6PlusSmall"
        
        
        products = [product1, product2, product3, product4 , product5]
        
        //productNames = ["1907 Wall Set" , "1921 Dial Phone" , "1937 Desk Set" , "1984 Motorola Portable"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return (productNames?.count)!
        if let p = products{
            return p.count
        }
         return 0
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        cell.textLabel?.text = "Hi Friend"
        cell.imageView?.image = UIImage(named: "Watches")
        return cell*/
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        let product = products?[indexPath.row] //set the product Name
        
        if let p = product {
            cell.textLabel?.text = p.name;
            
            if let i = product?.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }
        }
        return cell
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct"{
            let productVC = segue.destinationViewController as! ProductViewController
            
            //Esta funcion permite que se asigne la variable si existe lo asigne o de lo contrario ejecute Return 
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else {
                    return
            }
            
            productVC.product = products?[indexPath.row]
            
            /*if let cell = sender as? UITableViewCell{
                if let indexPath = tableView.indexPathForCell(cell){
                    productVC.productName = productNames?[indexPath.row]
                }
            }*/
            
            /*let cell = sender as? UITableViewCell
            if let c = cell {
                let indexPath = tableView.indexPathForCell(c)
                if let ip = indexPath{
                    let productName = productNames?[ip.row]
                    productVC.productName = productName
                }
            }*/
            
            /*let indexPath = self.tableView.indexPathForSelectedRow!
            productVC.productName = self.productNames?[indexPath.row] //"1937 Desk Phone"
            */
            
        }
    }
}
