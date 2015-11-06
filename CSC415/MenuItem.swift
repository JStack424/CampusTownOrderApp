//
//  MenuItem.swift
//  CSC415
//
//  Created by Joe Stack on 11/2/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

//This class is used to store information about one item on the menu. An array of these are used to store the whole menu
class MenuItem {
    
    //Properties
    var name: String
    var photo: UIImage?
    var price: Float
    
    //Initializer
    //Simply sets all the information
    init(name: String, photo: UIImage?, price: Float) {
        self.name = name
        self.photo = photo
        self.price = price
    }
}