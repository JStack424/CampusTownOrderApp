//
//  ItemViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/3/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    var inputItem: MenuItem?

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPicture: UIImageView!
    @IBOutlet weak var itemPrice: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let currentItem = inputItem {
            itemName.text = currentItem.name
            itemPicture.image = currentItem.photo
            
            let formatter = NSNumberFormatter()
            formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            itemPrice.text = formatter.stringFromNumber(currentItem.price)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var currentCart = [MenuItem]()
        if let parent = self.parentViewController?.parentViewController as? UITabBarController {
            parent.selectedIndex = 2
            if let nextVC = parent.selectedViewController as? UINavigationController {
                if let cartVC = nextVC.visibleViewController as? CartTableViewController {
                    currentCart = cartVC.cartItems
                }
            }
        }
        var nextView = segue.destinationViewController as UIViewController
        if let tabCon = nextView as? UITabBarController {
            tabCon.selectedIndex = 2
            if let navCon = tabCon.selectedViewController as? UINavigationController {
                nextView = navCon.visibleViewController!
            }
        }
        
        if let cartViewCon = nextView as? CartTableViewController {
            let newCart: [MenuItem] = currentCart + [inputItem!]
            cartViewCon.cartItems = newCart
        }

        
    }
}
