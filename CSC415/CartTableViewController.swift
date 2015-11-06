//
//  CartTableViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/3/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {

    //Variables for managing data stored in the cart
    var allItems = EveryItem().menuItems
    var cartItems = [MenuItem]()
    //Keeps track of the total cost of the items in the cart
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        priceLabel.backgroundColor = UIColor.greenColor() //Sets a green bar behind the price tag
        setPrice() //Calls a method to set the UILabel to display the appropriate price

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    }

    //Function to calculate the total price of the cart
    func calcPrice() -> Float {
        var totalCost: Float = 0
        //iterates through each item, adding their prices and keeping track of the cumulative
        for item in cartItems {
            totalCost += item.price
        }
        return totalCost
    }
    
    //First calls the calcPrice() method, then formats its return value and displays it on the price label
    func setPrice() {
        let totalCost = calcPrice()
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        priceLabel.text = "  Total Cost: " + formatter.stringFromNumber(totalCost)!
    }

    // MARK: - Table view data source


    //Returns number of sections in the table view
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    //returns the number of items in each section
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }

    //Handles the display of the table by receiving information about each cell and properly displaying it
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "MenuItemCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MenuItemCell
        let cartItem = cartItems[indexPath.row]
        
        //Configure the Cell
        cell.nameLabel.text = cartItem.name
        cell.photoView.image = cartItem.photo
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        cell.priceView.text = formatter.stringFromNumber(cartItem.price)


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */


    //Function used to handle deletion of elements in the cart
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            cartItems.removeAtIndex(indexPath.row)
            //Reloads the table once the element has been removed
            tableView.reloadData()
            //Recalculate and set the new price
            setPrice()
            //tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Method called when segueing to the checkout screen
        // Get the new view controller using segue.destinationViewController.
        if let CheckoutVC = segue.destinationViewController as? CheckoutViewController {
            //Calculates the current cost of items in the cart and sends it to the checkout view controller
            CheckoutVC.totalCost = calcPrice()
            //Sends the current list of items in the cart to the checkout view controller
            CheckoutVC.orderedItems = cartItems
        }
    }
    

}
