//
//  CheckoutViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/6/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController, UITextFieldDelegate {
    //Instance data for the checkout process
    var totalCost: Float?
    var orderedItems: [MenuItem]?
    
    //Connections to the visible UI elements in the checkout screen
    @IBOutlet weak var dateWheel: UIDatePicker!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    
    //Called whenever a view is loaded
    override func viewDidLoad() {
        super.viewDidLoad() //Must call super function
        
        //Create formatter and label the price of whole cart correctly
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        priceLabel.text = "Amount Owed: \(formatter.stringFromNumber(totalCost!)!)"
        
        //Sets the min and max dates for the date wheel
        dateWheel.minimumDate = NSDate()
        dateWheel.maximumDate = NSDate(timeIntervalSinceNow: NSTimeInterval(86400))
        
        // Declares textField delegates
        self.nameField.delegate = self
        self.numberField.delegate = self
        
    }
    
    //Function to make keyboard disappear when done editing
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    // MARK: - Navigation
    
    //Prints all the order information when an order is complete
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var myOrder: String = ""
        //Adds all necessary information onto a string in an organized manner
        myOrder += "Name: \(nameField.text!)\n"
        myOrder += "Phone Number: \(numberField.text!)\n"
        myOrder += "Total Cost: \(totalCost!)\n"
        myOrder += "Items Ordered:\n"
        for item in orderedItems! {
            myOrder += "\t\(item.name)\n"
        }
        myOrder += "Pickup Time: \(dateWheel.date)"
        
        //Prints the order information all at once
        print(myOrder)
    }
    
}
