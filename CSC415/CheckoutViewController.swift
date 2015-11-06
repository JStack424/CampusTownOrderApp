//
//  CheckoutViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/6/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController, UITextFieldDelegate {
    
    var totalCost: Float?
    var orderedItems: [MenuItem]?
    
    @IBOutlet weak var dateWheel: UIDatePicker!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        priceLabel.text = "Amount Owed: \(formatter.stringFromNumber(totalCost!)!)"
        dateWheel.minimumDate = NSDate()
        dateWheel.maximumDate = NSDate(timeIntervalSinceNow: NSTimeInterval(86400))
        // Do any additional setup after loading the view.
        self.nameField.delegate = self
        self.numberField.delegate = self
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var myOrder: String = ""
        myOrder += "Name: \(nameField.text!)\n"
        myOrder += "Phone Number: \(numberField.text!)\n"
        myOrder += "Total Cost: \(totalCost!)\n"
        myOrder += "Items Ordered:\n"
        for item in orderedItems! {
            myOrder += "\t\(item.name)\n"
        }
        myOrder += "Pickup Time: \(dateWheel.date)"
        
        print(myOrder)
    }
    
}
