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
    
    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantInfo: UITextView!
    @IBOutlet weak var restaurantName: UILabel!
    
    override func viewDidLoad() {
        restaurantImage.image = UIImage(named: "restaurant")
        let theName = "Generic Pizza Place"
        restaurantName.text = theName

        let theAddress = "1234 Foobar rd. Ewing, NJ 08638"
        let thePhoneNumber = "(123) 456-7890"
        let theDescription = "A happy family restaurant where we serve pizza of all different kinds. More info more info more info more info"
        let theHours = "\n\tMonday 10:00am - 9:00pm\n\tTuesday 10:00am - 10:00pm\n\tWednesday 10:00am - 9:00pm\n\tThursday 10:00am - 9:00pm\n\tFriday 10:00am - 11:00pm\n\tSaturday 12:00pm - 11:00pm\n\tSunday 10:00am - 8:00pm"
        restaurantInfo.text = "Address: \(theAddress)\n\nPhone Number: \(thePhoneNumber)\n\nDescription: \(theDescription)\n\nHours: \(theHours)"
        restaurantInfo.font = UIFont(name: UIFont.preferredFontForTextStyle("body").fontName, size: CGFloat(15))
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

