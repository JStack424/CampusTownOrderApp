//
//  InfoViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/1/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

@IBDesignable
class InfoViewController: UIViewController {
    
    //Interface Builder references to manipulate information in the Info View
    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantInfo: UITextView!
    @IBOutlet weak var restaurantName: UILabel!
    
    //Called every time the view finishes loading
    override func viewDidLoad() {
        
        //Set the restaurant's name and link to image
        restaurantImage.image = UIImage(named: "restaurant")
        let theName = "Generic Pizza Place"
        restaurantName.text = theName

        //Declare various information about restaurant
        let theAddress = "1234 Foobar rd. Ewing, NJ 08638"
        let thePhoneNumber = "(123) 456-7890"
        let theDescription = "A happy family restaurant where we serve pizza of all different kinds. More info more info more info more info"
        let theHours = "\n\tMonday 10:00am - 9:00pm\n\tTuesday 10:00am - 10:00pm\n\tWednesday 10:00am - 9:00pm\n\tThursday 10:00am - 9:00pm\n\tFriday 10:00am - 11:00pm\n\tSaturday 12:00pm - 11:00pm\n\tSunday 10:00am - 8:00pm"
        
        //Display restaurant's information in UI text box
        restaurantInfo.text = "Address: \(theAddress)\n\nPhone Number: \(thePhoneNumber)\n\nDescription: \(theDescription)\n\nHours: \(theHours)"
        //Change font of info section
        restaurantInfo.font = UIFont(name: UIFont.preferredFontForTextStyle("body").fontName, size: CGFloat(15))
        
        //Always need to call superclass's function
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

