//
//  ItemViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/3/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    //The item which is on display. This is sent from the previous view controller
    var inputItem: MenuItem?

    //Outlets to the visible information in the view of the item's description
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPicture: UIImageView!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    

    //Called every time the view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Determines which item was sent and sets all UI elements to correspond to said item
        if let currentItem = inputItem {
            itemName.text = currentItem.name
            itemPicture.image = currentItem.photo
            
            //Number formatter used to display the price in currency notation
            let formatter = NSNumberFormatter()
            formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            itemPrice.text = formatter.stringFromNumber(currentItem.price)
        }
        //itemDescription is a label which lists the toppings used on each slice
        itemDescription.text = "Toppings:\n"
        
        //Switch is used to print the correct toppings depending on what kind of pizza it is
        switch itemName.text! {
        case "Plain Slice": itemDescription.text = "Just a plain old slice of pizza"
            case "Pepperoni Slice": itemDescription.text?.appendContentsOf("Pepperoni")
            case "Specialty Slice": itemDescription.text?.appendContentsOf("Onion, Salami, Black Olives, Red Peppers")
            case "Sausage Slice": itemDescription.text?.appendContentsOf("Sausage")
            case "Veggie Slice": itemDescription.text?.appendContentsOf("Green Peppers, Red Peppers")
            case "Buffalo Chicken Slice": itemDescription.text?.appendContentsOf("Chicken, Hot Sauce, Ranch, Blue Cheese")
            case "Greek Slice": itemDescription.text?.appendContentsOf("Pepperoni, Artichoke, Green Peppers, Mushrooms")
            case "Hawaiian Slice": itemDescription.text?.appendContentsOf("Ham, Pineapple")
        default: itemDescription.text = "Wrong Pizza"
        }
    }
    
    //Complicated method for adding the item being viewed to the shopping cart
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var currentCart = [MenuItem]()
        //gets a pointer to the TabBarController that controls the flow of the entire application
        if let parent = self.parentViewController?.parentViewController as? UITabBarController {
            parent.selectedIndex = 2 //Selects which view to activate
            //gets a pointer to the activated view
            if let nextVC = parent.selectedViewController as? UINavigationController {
                //using this view, gets a pointer to the shopping cart table controller
                if let cartVC = nextVC.visibleViewController as? CartTableViewController {
                    //gets the current state of the shopping cart
                    currentCart = cartVC.cartItems
                }
            }
        }
        //Same process, gets a pointer to the tab bar controller, sets the active index, gets navigation controller, then creates a pointer to its visible view
        var nextView = segue.destinationViewController as UIViewController
        if let tabCon = nextView as? UITabBarController {
            tabCon.selectedIndex = 2
            if let navCon = tabCon.selectedViewController as? UINavigationController {
                nextView = navCon.visibleViewController!
            }
        }
        //gets a pointer to the view that will next be presented on screen
        if let cartViewCon = nextView as? CartTableViewController {
            //Adds the new item to the current shopping cart
            let newCart: [MenuItem] = currentCart + [inputItem!]
            //passes all contents of the new shopping cart to the cart view controller
            cartViewCon.cartItems = newCart
        }

        
    }
}
