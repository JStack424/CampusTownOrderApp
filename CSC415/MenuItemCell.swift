//
//  MenuItemCell.swift
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
//  Filename: MenuItemCell.swift
//  Description: Subclass of UITableViewCell tailored to properly display information needed about a menu item
//  Last modified on: 11/6/15

import UIKit

class MenuItemCell: UITableViewCell {

    // MARK: Properties
    
    //Interface Builder outlets to the important information displayed in the table's cells
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var priceView: UILabel!
    

    //Decides what to do when a cell is selected
    override func setSelected(selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
