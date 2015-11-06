//
//  MenuTableViewController.swift
//  CSC415
//
//  Created by Joe Stack on 11/2/15.
//  Copyright © 2015 Articular Multimedia. All rights reserved.
//

import UIKit


class MenuTableViewController: UITableViewController {

    // MARK: Properties
    var items = EveryItem().menuItems


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentiefier = "MenuItemCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentiefier, forIndexPath: indexPath) as! MenuItemCell
        let menuItem = items[indexPath.row]
        
        cell.nameLabel.text = menuItem.name
        cell.photoView.image = menuItem.photo
        let format = NSNumberFormatter()
        format.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        cell.priceView.text =  format.stringFromNumber(menuItem.price)

        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedItem = items[indexPath.row]
        self.performSegueWithIdentifier("detailSegue", sender: selectedItem)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        let nextViewController = segue.destinationViewController as! ItemViewController
        nextViewController.inputItem = sender as? MenuItem
        // Pass the selected object to the new view controller.
        
    }

}
