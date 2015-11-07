//
//  EveryItem.swift
//  CSC415
//
//  Created by Joe Stack on 11/3/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//
//  Name: Joseph Stack
//  Course: CSC 415
//  Semester: Fall 2015
//  Instructor: Dr. Pulimood
//  Project name: Guy
//  Description: Food ordering software for iOS
//  Filename: EveryItem.swift
//  Description: Class containing every item on the menu
//  Last modified on: 11/6/15

import UIKit

class EveryItem {
    
    //Declaration of all items on the menu
    let menuItems: [MenuItem] = [
        MenuItem(name: "Plain Slice", photo: UIImage(named: "plain"), price: 2.5),
        MenuItem(name: "Pepperoni Slice", photo: UIImage(named: "pepperoni"), price: 3),
        MenuItem(name: "Specialty Slice", photo: UIImage(named: "specialty"), price: 4.75),
        MenuItem(name: "Sausage Slice", photo: UIImage(named: "sausage"), price: 3.5),
        MenuItem(name: "Veggie Slice", photo: UIImage(named: "veggie"), price: 3),
        MenuItem(name: "Buffalo Chicken Slice", photo: UIImage(named: "buffchick"), price: 5.25),
        MenuItem(name: "Greek Slice", photo: UIImage(named: "greek"), price: 4.25),
        MenuItem(name: "Hawaiian Slice", photo: UIImage(named: "hawaiian"), price: 4.5)
    ]
    
}