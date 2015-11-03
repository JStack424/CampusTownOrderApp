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
    
    var items = [MenuItem]()
    
    @IBOutlet weak var menuItem: MenuItemCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleMeals()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadSampleMeals() {
        let photo1 = UIImage(named: "pizza1")
        let photo2 = UIImage(named: "pizza2")
        let photo3 = UIImage(named: "pizza3")

        let item1 = MenuItem(name: "Plain Slice", photo: photo1, price: 2.50)
        let item2 = MenuItem(name: "Pepperoni Slice", photo: photo2, price: 3.50)
        let item3 = MenuItem(name: "Specialty Slice", photo: photo3, price: 5.00)
        
        items += [item1, item2, item3]
        items += [item1, item2, item3]
        items += [item1, item2, item3]
        items += [item1, item2, item3]
        items += [item1, item2, item3]
        items += [item1, item2, item3]
        items += [item1, item2, item3]
        items += [item1, item2, item3]

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

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
    var selectedItem: MenuItem?
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedItem = items[indexPath.row]
        self.performSegueWithIdentifier("detailSegue", sender: self)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        let nextViewController = segue.destinationViewController as! ItemViewController
        nextViewController.inputItem = selectedItem
        // Pass the selected object to the new view controller.
        
    }

}
