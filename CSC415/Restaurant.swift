//
//  Restaurant.swift
//  CSC415
//
//  Created by Joe Stack on 11/3/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import Foundation

class Restaurant {
    let name: String
    let address: String
    let phoneNumber: String
    let description: String
    let hours: [String: String]
    let menu: [String: MenuItem]
    
    init(name: String, address: String, phoneNumber: String, description: String, hours: [String: String], menu: [String: MenuItem]) {
        self.name = name
        self.address = address
        self.phoneNumber = phoneNumber
        self.description = description
        self.hours = hours
        self.menu = menu
    }
    
    func getInfo() -> String {
        return "Name: \(self.name)\nAddress: \(self.address)\nPhone Number: \(self.phoneNumber)\nDescription: \(self.description)\nHours:\n" + printHours()
    }
    
    func printHours() -> String {
        return "Hours:\n\t"
    }
    
    func getMenuItems() -> [MenuItem] {
        var allItems = [MenuItem]()
        for (_, item) in menu {
            allItems.append(item)
        }
        return allItems
    }
}