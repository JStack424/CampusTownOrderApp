//
//  MenuItem.swift
//  CSC415
//
//  Created by Joe Stack on 11/2/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class MenuItem {
    //Properties
    
    var name: String
    var photo: UIImage?
    var price: Float
    
    //Initializer
    init(name: String, photo: UIImage?, price: Float) {
        self.name = name
        self.photo = photo
        self.price = price
    }
}