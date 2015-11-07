//
//  MenuItem.swift
//  CSC415
//
//  Created by Joe Stack on 11/2/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//
//  Name: Joseph Stack
//  Course: CSC 415
//  Semester: Fall 2015
//  Instructor: Dr. Pulimood
//  Project name: Guy
//  Description: Food ordering software for iOS
//  Filename: MenuItem.swift
//  Description: Class used to store information about one item on the menu. An array of this is used to store the whole menu
//  Last modified on: 11/6/15

import UIKit

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