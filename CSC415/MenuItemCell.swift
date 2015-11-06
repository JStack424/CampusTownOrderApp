//
//  MenuItemCell.swift
//  CSC415
//
//  Created by Joe Stack on 11/2/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

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
