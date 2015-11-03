//
//  EveryItem.swift
//  CSC415
//
//  Created by Joe Stack on 11/3/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit

class EveryItem {
    
    var fullMenu = [
        "Plain Slice": MenuItem(name: "Plain Slice", photo: UIImage(named: "pizza1"), price: 2.5),
        "Pepperoni Slice": MenuItem(name: "Pepperoni Slice", photo: UIImage(named: "pizza2"), price: 3.5),
        "Specialty Slice": MenuItem(name: "Specialty Slice", photo: UIImage(named: "pizza3"), price: 5),
        "Sausage Slice": MenuItem(name: "Sausage Slice", photo: UIImage(named: "pizza2"), price: 4),
        "Pepper Slice": MenuItem(name: "Pepper Slice", photo: UIImage(named: "pizza1"), price: 3.5),
        "Buffalo Chicken Slice": MenuItem(name: "Buffalo Chicken Slice", photo: UIImage(named: "pizza3"), price: 5.5),
    ]
    
    var cartContents = [MenuItem]()
    
    func getMenuItems() -> [MenuItem] {
        var allItems = [MenuItem]()
        for item in fullMenu {
            allItems.append(item.1)
        }
        return allItems
    }
}